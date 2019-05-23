#!/bin/bash

if [ "$1" != '' ]
then
	chmod 700 split-tables.sh
	chmod 700 run-queries.sh
	echo "reformatting and splitting CSV data"
	time ./split-tables.sh "$1"
	echo "creating tables and loading data"
	time ./run-queries.sh derby-script.sql
	echo "test query1"
	time ./run-queries.sh query1.sql
	echo "test query2"
	time ./run-queries.sh query2.sql
	echo "test query3"
	time ./run-queries.sh query3.sql
	echo "test query4"
	time ./run-queries.sh query4.sql
else
	echo "Usage: bash part1.sh input_csv_file"
fi
