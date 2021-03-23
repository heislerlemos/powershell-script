    

#This script must be run as admin on powershell


# check if the user has the employeenumber atribute
get-aduser -filter * -SearchBase "OU=heisler, DC=heisler , DC=ao" -Properties * | select samaccountname,employeenumber


# variable to import the csv path
 $csv = Import-Csv -path "C:\Users\heisler\Desktop\Updateusertest.csv"


#To check if the csv file as the data
$csv


# make a loop to identify the user account and set  the employee number
$csv | ForEach-Object {​​​​​​​​​​​​​set-aduser -identity $_.SamAccountName  -employeeNumber  $_.employeeNumber}​​​​​​​​​​​​​





################################################
# the csv file  should contain the  following fields :


SamAccountName,employeeNumber
rsanchez, 4
andre, 7
tiago, 10
miguel, 3



################################################
Check in AD GUI if the user was altered



