# RespondusLockdownFix
The .ps1 script in this repo uninstalls respondus lockdown browser and fixes common changes to reg keys that it may have made

You may want to first uninstall the Respondus LockDown Browser from your computer.
After uninstalling, run the script using the instructions below:

Download the .ps1 file to your computer. Right-click the downloaded file, and run it as administrator. 
If you do not see an option to run as administrator, first verify that you have administrator privileges. 

Once you have confirmed you are in fact an administrator, perform the following:
Open the start menu, type "powershell" and run as administrator. 
Run the following commands: 

> cd C:\users\<ENTER YOUR USERNAME HERE>\downloads
> .\RespondusLockdownRegKeyFix.ps1

After you have gotten the script to run, reboot your computer. 
You should now have access to the following again:
> Task Manager
> Lock Screen
> Switch User
> Reboot/Shutdown
> Log off

For the final step, email your school's admin and let them know LockDown Browser is the fucking worst. 
