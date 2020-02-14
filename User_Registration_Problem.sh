#!/bin/bash -x
echo "Welcome To User Registration Problem"

#Function To validation
function validation()
{
   letter=$1
   pattern=$2
   if [[ $letter =~ $pattern ]]
   then
      echo "$letter is Valid!!"
      break
   else
      echo "Oops!!.$letter is invalid...please Re-enter it!!"
   fi
}

#Function To Validate First Name
function firstNameValidation()
{
   fName=^[A-Z]{1}[a-z]{2,}$
   while true
   do
      read -p "Enter First Name : " firstName
      validation $firstName $fName
   done
}
firstNameValidation

#Function To Validate Last Name
function lastNameValidation()
{
   lName=^[A-Z]{1}[a-z]{2,}$
   while true
   do
      read -p "Enter Last Name : " lastName
      validation $lastName $lName
   done
}
lastNameValidation

