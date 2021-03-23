


#Download the software alter the direction path "C:\Users....."
#open powershell
#to check this type pwd or dir


#paste this

$arguments = "/i `"C:\Users\heisler.lemos\Downloads\FortiClient.msi`" /quiet"
#and this

Start-Process msiexec.exe -ArgumentList $arguments -Wait
#done