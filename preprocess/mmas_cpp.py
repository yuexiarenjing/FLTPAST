import re
import os
import json

#
# CFG utils
#

# get name set of functions definitied in the IR file
def get_function_list_from_IR(IR_file):
	function_list = []
	file = open(IR_file, "r")
	for line in file:
		pattern = re.compile(r'^define')
		result = pattern.findall(line)
		if len(result) == 0: # not start with define, skip
			continue
		if line.find("define") != -1 and line.find("@") != -1: # fine a function definition line
			pattern = re.compile(r'@[\w.]+\(')
			result = pattern.findall(line)
			function_name = result[0][1:-1]
			function_list.append(function_name)
	return function_list

# find a function definition body
def get_IR_function_body(IR_file, function_name):
	function_body = "" # function body string
	find = False # flag mark target function appear, default not appeared
	file = open(IR_file, "r") # open IR file
	for line in file:
		if line.find("define") != -1 and line.find("@"+function_name+"(") != -1: # find head
			pattern = re.compile(r'^define')
			result = pattern.findall(line)
			if len(result) == 0: # not start with define, skip
				continue
			function_body = function_body + line
			find = True
			continue
		if find == True: # continue write body
			function_body = function_body + line
			if line.find("}") != -1:
				find = False
	file.close() # close IR file
	return function_body # return function dody

# convert a function body to CFG
def IR_to_CFG(function_name, function_body):
	# initialize CFG structure
	vetex_list = []
	edge_list = []
	# add function Entry and Exit
	Entry_id = function_name + "-Entry"
	Exit_id = function_name + "-Exit"
	vetex_list.append((Entry_id, ""))
	vetex_list.append((Exit_id, ""))
	# iterator each line divide to basic block
	block_list = []
	block = []
	for line in function_body.split("\n"):
		if line != "":
			block.append(line)
		else:
			block_list.append(block)
			block = []
	# for each block add a vetex
	for b in block_list:
		block_id = ""
		# for 1th block
		if b[0].find("@"+function_name+"(") != -1:
			# if without label, label take 0
			if b[1].strip().split()[0].find("%") == -1:
				block_id = function_name + "-0"
			else:
				index = b[1].find("%")
				label = b[1][index+1:].split()[0] # get block label		
				block_id = function_name + "-" + str(int(label) - 1)
			# add vetex
			vetex_list.append((block_id, b))
			# no need to add edge
		else: # for other block
			index = b[0].find(":")
			label = b[0][:index] # get block label
			block_id = function_name + "-" + label
			
			index = b[0].find("=")
			if index == -1: # no pred found
				continue
			# add vetex
			vetex_list.append((block_id, b))
			preds_label_string = b[0][index+1:] # get predecessors block label
			preds_label_array = preds_label_string.split(",")
			for pred_label in preds_label_array:
				pred_label = pred_label.strip()[1:]
				pred_block_id = function_name + "-" + pred_label
				# add edge
				edge_list.append((pred_block_id, block_id))
		# for every block
		if b[-1].find("unreachable") != -1: 
			# add edge to Exit
			edge_list.append((block_id, Exit_id))
	# add other edge related to Entry & Exit
	# initialize set
	vetex_set_beside_Enrty_Exit_1 = set()
	vetex_set_beside_Enrty_Exit_2 = set()
	edge_set_in = set()
	edge_set_out = set()
	for vetex in vetex_list:
		if vetex[0] == Entry_id or vetex[0] == Exit_id:
			continue
		vetex_set_beside_Enrty_Exit_1.add(vetex[0])
		vetex_set_beside_Enrty_Exit_2.add(vetex[0])

	for edge in edge_list:
		edge_set_in.add(edge[0])
		edge_set_out.add(edge[1])
	# vetex no edge pointed to, should be pointed by Entry, generally contain first block
	vetex_set_beside_Enrty_Exit_1.difference_update(edge_set_out)
	for vetex in vetex_set_beside_Enrty_Exit_1:
		edge_list.append((Entry_id, vetex))
	# vetex never point out, should point to Exit, generally contain last block
	vetex_set_beside_Enrty_Exit_2.difference_update(edge_set_in)
	for vetex in vetex_set_beside_Enrty_Exit_2:
		edge_list.append((vetex, Exit_id))
	return (vetex_list, edge_list)

# for each file in path
def get_files_in_path(path):
    file_list = []
    for root, dirs, files in os.walk(path):
        for f in files:
            file_list.append(os.path.join(root, f))
    return file_list

# create CFG from IR
def dump_CFGs():
	CFGs = []
	function_list_all = []
	IR_file_list = get_files_in_path("LLVM-IR/")
	for IR_file in IR_file_list:
		function_list = get_function_list_from_IR(IR_file)
		for function_name in function_list:
			if function_name not in function_list_all:
				function_list_all.append(function_name)
				IR_function_body = get_IR_function_body(IR_file, function_name)			
				(vetex_list, edge_list) = IR_to_CFG(function_name, IR_function_body)
				CFGs.append((function_name, vetex_list, edge_list))
	with open("cfgs.json", 'w') as f:
		json.dump(CFGs, f, indent=2)
	return CFGs

# if not exist then create, else read and return
def load_CFGs():
	CFGs = []
	if os.path.isfile("cfgs.json"):
		with open("cfgs.json", 'r') as f:
			CFGs = json.load(f)
	else:
		CFGs = dump_CFGs()
	return CFGs

#
# Full Function Trace
#

def get_cpp_fun(cpp_fun_name, probe_functions):
	for probe_fun in probe_functions:
		if probe_fun in cpp_fun_name:
			return probe_fun
	return ""

# filter out functions which can not be traced
def trace_filter(function_list):
	res_list = list()
	stap_L_call_file = './probe_functions'
	probe_functions = list()
	with open(stap_L_call_file, 'r') as fd:
		lines = fd.readlines()
		for line in lines:
			f_array = re.findall(r"function\(\"(.*)@/root/workload/omnetpp", line)
			if len(f_array) == 1 and f_array[0] not in probe_functions:
				f = f_array[0]
				probe_functions.append(f)
	for fun in function_list:
		converted_fun = get_cpp_fun(fun, probe_functions)
		if converted_fun != "":
			res_list.append(fun)
	return res_list

# get functions defined by software and which can be treaced as a list
def get_all_traceable_functions():
	res_list = []
	CFGs = load_CFGs()
	for CFG in CFGs:
		function_name, vetex_list, edge_list = CFG
		if function_name not in res_list:
			res_list.append(function_name)
	res_list = trace_filter(res_list) # filter out untraceable function
	return res_list

#
# 初始化
#

def add_fun_block_relation(R_fun_blocks, fun, block_id):  # R_fun_block [fun, [blocks]]
	for fun_blocks in R_fun_blocks:
		if fun_blocks[0] == fun:
			if block_id not in fun_blocks[1]:
				fun_blocks[1].append(block_id)
			return
	R_fun_blocks.append([fun, [block_id]])

def init_info(CFGs, R_fun_blocks, block_lst, traceable_functions):
	for CFG in CFGs:  # 分析获取需要考虑的基本块，并获取函数的基本块覆盖关系
		function_name, vetex_list, edge_list = CFG
		# ignore index 0 and 1 (Entry and End)
		for vetex in vetex_list[2:]: # omit Entry & Exit
			# get functions called in vertex of the CFG
			CFG_function_list = []
			for line in vetex[1]:
				if line.find(" call ") != -1:
					pattern = re.compile(r'@\w+\(')
					result = pattern.findall(line)
					if len(result) == 0: # function pointer, skip
						continue
					fun_name = result[0][1:-1]
					if fun_name in traceable_functions:
						CFG_function_list.append(fun_name)
			# compute which function to trace
			if len(CFG_function_list) > 0:
				block_lst.append([vetex[0], CFG_function_list]) # block id, function_lst
				for fun in CFG_function_list:
					add_fun_block_relation(R_fun_blocks, fun, vetex[0])

def parse_trace(traceable_functions):
	fun_count_lst = list()
	fun_lst = list()
	with open('fun_count.out', 'r') as fd:
		for line in fd.readlines():
			res = line.split(":")
			if len(res) != 2:
				continue
			fun = res[0]
			count = res[1]
			fun = fun.strip()
			count = int(count.strip())
			fun_count_lst.append([fun, count])
			fun_lst.append(fun)
	# complete
	for fun in traceable_functions:
		if fun not in fun_lst:
			fun_count_lst.append([fun, 0])
	return fun_count_lst

# 获取函数覆盖基本块关系列表中所有函数构成的函数列表
def get_R_funs(R_fun_blocks):
	R_funs = list()
	for fun_blocks in R_fun_blocks:
		if fun_blocks[0] not in R_funs:
			R_funs.append(fun_blocks[0])
	return R_funs

def resort_W_fun(R_funs, W_fun):  # W_fin: [fun, weight]
	new_W_fun = list()
	for R_fun in R_funs:
		for W_f in W_fun:
			if R_fun == W_f[0]:
				new_W_fun.append([R_fun, W_f[1]])
	return new_W_fun

# redis数据
traceable_functions = get_all_traceable_functions()  # 所有redis实现的且可以被probe的函数列表
block_lst = list()  # 所有redis实现函数的CFG包含的基本块（仅考虑包含至少一个traceable_function的基本块）
R_fun_blocks = list()  # 函数的基本块覆盖关系
CFGs = load_CFGs()
init_info(CFGs, R_fun_blocks, block_lst, traceable_functions)
R_funs = get_R_funs(R_fun_blocks)  # 最终函数表

# 输入
N_fun = len(R_funs)  # 函数数量
N_block = len(block_lst)  # IR基本块数量
W_fun = parse_trace(R_funs)  # 函数的权重（代价）
W_fun = resort_W_fun(R_funs, W_fun)

def dump_data():
	with open("fun_blocks.txt", "w") as fd:
		with open("fun_weight.txt", "w") as fd1:
			for j in range(N_fun):
				if W_fun[j][1] != 0:
					fd1.write(W_fun[j][0] + "," + str(W_fun[j][1]))
					fd1.write("\n")
					fd.write(R_fun_blocks[j][0])
					for block in R_fun_blocks[j][1]:
						fd.write("," + block)
					fd.write("\n")

dump_data()
