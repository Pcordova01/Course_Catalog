#!/bin/bash


if [ ! -d "data" ]; then
	echo "Total course records: 0"
	exit 0
fi


total_courses=$(find data -type f -name "*.crs" | wc -l)
 
echo "Total course records: $total_courses total"
