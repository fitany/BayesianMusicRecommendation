{\rtf1\ansi\ansicpg1252\cocoartf1265\cocoasubrtf190
{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural

\f0\fs24 \cf0 Readme\
\
run_tests.m is the master script that should run every single test\
it calls test_harness.m multiple times\
test_harness.m runs and produces the metric scores for a set of queries the way the MSD challenge would do it\
\
Folders\
	data\
		contains all of the data\
		must load kaggle_playlists.mat before running test_harness.m\
	models\
		contains all of the code for the models\
		input matrix and query and output a ranking of all of the songs as idx\
	metrics\
	utilities\
	data conversion}