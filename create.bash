
#!/bin/bash

# making new course

  read -p "Enter department code: " department_code
  read -p "Enter department name: " department_name

  read -p "Enter course number: " course_number
  read -p "Enter course name: " course_name
  read -p "Enter course schedule (MWF or TH): " course_schedule
  read -p "Enter start date: " start_date
  read -p "Enter end date: " end_date
  read -p "Enter credit hours: " credit_hours
  read -p "Enter initial course enrollment: " course_size


# creating filename based on combination of department code and course number
course_file="data/${department_code}${course_number}.crs"

# If the course exists, print error message and cancel

 if [ -f "$course_file" ]; then
      echo "ERROR: course already exists"
      exit 1
 fi

 mkdir -p data


# uppercase conversion
department_code="${department_code^^}"

# writing course file of exactly five lines
	echo "$department_code $department_name" > "$course_file"
	echo "$course_name" >> "$course_file"
	echo "$course_schedule" "$start_date" "$end_date" >> "$course_file"
   echo "$credit_hours" >> "$course_file"
	echo "$course_size" >> "$course_file"

# Log the data
echo "$(date) CREATED: $department_code $course_number $course_name" >> data/queries.log

echo "Course $department_code$course_number has been added to your catalog!"

