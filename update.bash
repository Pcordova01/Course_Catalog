#!/bin/bash

read -p "Enter department code: " department_code
department_code="${department_code^^}"
read -p "Enter department name: " department_name
read -p "Enter course number: " course_number
read -p "Enter course name: " course_name
read -p "Enter course meeting days (MWF, TH): " course_schedule
read -p "Enter course start date: " start_date
read -p "Enter course end date: " end_date
read -p "Enter course credit hours: " credit_hours
read -p "Enter course enrollment: " course_size

course_file="data/${department_code}${course_number}.crs"

# seaching for specified course
if [ -f "$course_file" ]; then

   read -r og_department_code og_department_name < "$course_file"
   read -r og_course_name < <(sed -n '2p' "$course_file")
   read -r og_course_schedule og_start_date og_end_date < <(sed -n '3p' "$course_file")
   read -r og_credit_hours < <(sed -n '4p' "$course_file")
   read -r og_course_size < <(sed -n '5p' "$course_file")

   if [[ "$department_name" == "" ]]; then  
    department_name="$og_department_name"
   fi
   if [[ "$course_name" == "" ]]; then
     course_name="$og_course_name"
   fi
   if [[ "$course_schedule" == "" ]]; then
     course_schedule="$og_course_schedule"
   fi
   if [[ "$start_date" == "" ]]; then
     start_date="$og_start_date"
   fi
   if [[ "$end_date" == "" ]]; then
     end_date="$og_end_date"
   fi
   if [[ "$credit_hours" == "" ]]; then
     credit_hours="$og_credit_hours"
   fi
   if [[ "$course_size" == "" ]]; then
     course_size="$og_course_size"
   fi

  # writing course file of exactly five lines
        echo "$department_code $department_name" > "$course_file"
        echo "$course_name" >> "$course_file"
        echo "$course_schedule $start_date $end_date" >> "$course_file"
        echo "$credit_hours" >> "$course_file"
        echo "$course_size" >> "$course_file"

  # Log the data
  echo "$(date) UPDATED: $department_code $course_number $course_name" >> data/queries.log

else
   echo "ERROR: course not found"
fi
