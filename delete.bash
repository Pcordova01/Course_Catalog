#!/bin/bash

# prompting user for course department and course number
read -p "Enter department code and course number: " department_code course_number

# converting to uppercase
department_code="${department_code^^}"

# filename
course_file="data/${department_code}${course_number}.crs"

#if course file exists, we read it
if [ -f "$course_file" ]; then
{
 read -r department_code department_name
 read -r course_name
 read -r course_schedule start_date end_date
 read -r credit_hours
 read -r course_size

 # Log the data
 echo "$(date) DELETED: $department_code $course_number $course_name" >> data/queries.log

 #message to stdout
 echo "Course number $course_number was successfully deleted."

 #deleteing file 
 rm "$course_file"

} < "$course_file"
else
	echo "ERROR: course not found"
fi
