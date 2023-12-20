import os

for P in [0.01, 0.03, 0.05, 0.07, 0.1, 0.3, 0.5, 0.7, 0.9, 1.0]:

	pre_text = 'probe process("/path/to/binary").function("'
	post_text = '")\n{\n\tprintf("%s\\n", ppfunc());\n}\n'

	file = "output/libquantum/trace_functions-" + str(P)

	if not os.path.exists(file):
		print("file not exists.")
		exit(0)

	funs = []
	with open(file, "r") as fd:
		for line in fd.readlines():
			line = line.strip()
			if line != "":
				funs.append(line)

	print("trace function size:", len(funs))

	with open("adaptive_trace-" + str(P) + ".stp", "w") as fd:
		for fun in funs:
			fd.write(pre_text + fun + post_text)
