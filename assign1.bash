#!/bin/bash

while true; do
    echo "Enter one of the following actions or press CTRL-D to exit."
    echo "C - create a new course record"
    echo "R - read an existing course record"
    echo "U - update an existing course record"
    echo "D - delete an existing course record"
    echo "E - update enrolled student count of existing course" 
    echo "T - show total course count" 

    # taking in user input
    read -r action || break


   # converting to uppercase
   action="${action^^}"

   # handling the different options
    case "$action" in
        C) 
          source ./create.bash
          ;;
        R) 
          source ./read.bash
          ;;
        U)
          source ./update.bash
          ;;
        D)
         source ./delete.bash
         ;;
        E)
         source ./enroll.bash
         ;;
        T)
         source ./total.bash
         ;;
        *)
         echo "That wasn't an option... pay attention!!"
         ;;

    esac
done
