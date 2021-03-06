#!/usr/bin/python
import sys
import os
from os import listdir
from os.path import isfile, join
from shutil import copyfile
from subprocess import call
import subprocess
from sidebar import do_sidebar

modules = ['docs']
website_path = "generated"

cwd = sys.path[0]

#call("cp wiki/*.json  "+ cwd + os.sep + website_path + os.sep + "_data" , shell=True)

for module in modules:
	modulepath_src = cwd + os.sep + module
	modulepath_dest = cwd + os.sep + website_path + os.sep + module

	print modulepath_src
	print modulepath_dest
	srcfiles = [f for f in listdir(modulepath_src) if isfile(join(modulepath_src, f)) and f.lower().endswith('.md')]
	if not os.path.exists(modulepath_dest):
		os.makedirs(modulepath_dest)
	destfiles = [f for f in listdir(modulepath_dest) if isfile(join(modulepath_dest, f)) and f.lower().endswith('.md')]
	
	# Remove files in destination
	for destfile in destfiles:
		os.unlink( modulepath_dest + os.sep + destfile)
	destfiles = [f for f in listdir(modulepath_dest) if isfile(join(modulepath_dest, f)) and f.lower().endswith('.md')]

	for srcfile in srcfiles:
		copyfile(modulepath_src + os.sep + srcfile, modulepath_dest + os.sep + srcfile)
		# Add front matter
		FNULL = open(os.devnull, 'w')
		call(["sed", r"1s;^;---\n---\n\n;" , "-i",  modulepath_dest + os.sep + srcfile ],  stdout=FNULL, stderr=subprocess.STDOUT, close_fds=True)

	sidebar_dir = cwd + os.sep + website_path + os.sep + "_includes" 
	sidebar_dest =  sidebar_dir + os.sep + module + "_sidebar.html"
	if not os.path.exists(sidebar_dir):
		os.makedirs(sidebar_dir)
	sidebar_src = modulepath_src + os.sep + "_sidebar.txt"
	do_sidebar(sidebar_src , sidebar_dest)
import wikisamples