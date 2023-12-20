import os

includes = []

for root, dirs, files in os.walk("/root/workload/omnetpp"):
	for file in files:
		if len(file) > 2 and file[-2:] == ".h":
			print(file)
			i = root
			if i.find("mutate") == -1 and i not in includes:
				includes.append(i)

ss = ""
for i in includes:
	ss += "-I" + i + " "
	print(i)
print("###")
print(ss)
