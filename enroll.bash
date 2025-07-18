#!/bin/bash

# prompting user for course department and course number
read -p "Enter department code and course number: " department_code course_number

# converting to uppercase
department_code="${department_code^^}"

# filename
course_file="data/${department_code}${course_number}.crs"

read -p "Enter an enrollment change amount: " change_amount

#if course file exists, we read it
if [ -f "$course_file" ]; then
{
 read -r department_code department_name
 read -r course_name
 read -r course_schedule start_date end_date
 read -r credit_hours
 read -r course_size


 updated_enrollment=$((course_size + change_amount))



  # writing course file of exactly five lines(/w new enrollment)
        echo "$department_code $department_name" > "$course_file"
        echo "$course_name" >> "$course_file"
        echo "$course_schedule" "$start_date" "$end_date" >> "$course_file"
        echo "$credit_hours" >> "$course_file"
        echo "$updated_enrollment" >> "$course_file"

  # Log the data
  echo "$(date) ENROLLMENT: $department_code $course_number $course_name changed by $change_amount" >> data/queries.log


} <"$course_file"
else 
	echo "ERROR: course not found"
fi
