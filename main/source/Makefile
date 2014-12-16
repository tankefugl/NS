# Builds all the projects in the solution...
.PHONY: all_projects
all_projects: cl_dll.dll ns.dll 

# Builds project 'cl_dll.dll'...
.PHONY: cl_dll.dll
cl_dll.dll: 
	make --directory="cl_dll/" --file=cl_dll.dll.makefile

# Builds project 'ns.dll'...
.PHONY: ns.dll
ns.dll: 
	make --directory="dlls/" --file=ns.dll.makefile

# Cleans all projects...
.PHONY: clean
clean:
	make --directory="cl_dll/" --file=cl_dll.dll.makefile clean
	make --directory="dlls/" --file=ns.dll.makefile clean

