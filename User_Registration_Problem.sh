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
   fName=^[A-Z]{1}[A-Za-z]{2,}$
   while true
   do
      read -p "Enter First Name : " firstName
      validation $firstName $fName
   done
}
#firstNameValidation

#Function To Validate Last Name
function lastNameValidation()
{
   lName=^[A-Z]{1}[A-Za-z]{2,}$
   while true
   do
      read -p "Enter Last Name : " lastName
      validation $lastName $lName
   done
}
#lastNameValidation

#Function To Validate Email Address
function emailAddressValidation()
{
   emailId=^[a-zA-Z0-9]+[._%+-]*@[a-zA-Z0-9.]+[.][a-zA-Z]{2,4}$
   while true
   do
      read -p "Enter Email Id : " emailAddress
      validation $emailAddress $emailId
   done
}
#emailAddressValidation

#Funtion To Matching Pattern With Given Input
function validationForMobileNumber()
{
   letter=$1' '$2
   pattern=$3
   if [[ $letter =~ $pattern ]]
   then
      echo "$letter is Valid!!"
      break
   else
      echo "Oops!!.$letter is invalid...please Re-enter it!!"
   fi
}
#Function To Validate Mobile Number
function mobileNumberValidation()
{
   mobileNo=^[+]?[0-9]{2}[[:space:]][0-9]{10}$
   while true
   do
      read -p "Enter Mobile Number With Your Country Code : " mobileNumber
      validationForMobileNumber $mobileNumber $mobileNo
   done
}
#mobileNumberValidation

#Function To Validate Password
function passwordValidation()
{
   password="^[A-Z]{1,}[0-9]{1,}[A-Za-z0-9+._-%]{6,}$"
	while true
   do
      read -p "Enter Password : " pass
      validation $pass $password
   done
}
passwordValidation
