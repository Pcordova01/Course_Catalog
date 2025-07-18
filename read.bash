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
} < "$course_file"

  #printing course stuff
  echo "Course department: $department_code"
  echo "Department name: $department_name"
  echo "Course number: $course_number"
  echo "Course name: $course_name"
  echo "Scheduled days: $course_schedule"
  echo "Course start: $start_date"
  echo "Course end: $end_date"
  echo "Credit hours: $credit_hours"
  echo "Enrolled Students: $course_size"
else 
 echo "ERROR: course not found"
fi

