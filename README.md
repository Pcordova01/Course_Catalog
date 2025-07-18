# Course Catalog Management (Bash)

A command-line course management system written in Bash for UTSA CS 3423 - Systems Programming. The project includes a set of scripts to create, read, update, delete, and manage course enrollment data stored in plain text files. The original version of this assignment didn't allow the use of sed, so I took the initiative to extend the project-making it a personal project-by integrating sed commands to streamline text processing tasks and improve script efficiency. This addition gave me practical experience with powerful stream editing and demonstrated my ability to enhance existing codebases with advanced shell utilities.

## Features
- `create.bash`: Add a new course record
- `read.bash`: Display a course’s information
- `update.bash`: Modify existing course records
- `delete.bash`: Delete a course
- `enroll.bash`: Enroll or drop students
- `total.bash`: Count total enrolled students
- `assign1.bash`: Main script to run the project
- All actions are logged in `data/queries.log`

## Tech Stack
* Languages: Bash
* Tools: GNU Bash shell, Unix utilities (sed, read, echo, etc.)
* Platform: Tested on UTSA’s Linux-based environment

## Video Demo
Before starting the demo, there's already one course preloaded in the catalog to show that the system can store and persist data.
In the video, I’ll walk through adding a new course, reading and updating its information, enrolling students, and finally deleting it. By the end, the catalog will return to containing just the original course, demonstrating a full cycle of use while preserving data integrity.


## What I learned
* Shell scripting fundamentals: input handling, file redirection, conditional logic, loops, and command substitution
* Practical use of sed, read, echo, and file descriptors for reading and writing structured data
* Importance of user experience in CLI tools (input prompts, error messages, logging)
* Real-world simulation of systems tasks in a restricted Unix-like environment (no third-party tools)
