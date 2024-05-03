# paths to various reg keys that will be referred to later
$CUEXPLORER = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer"
$CUSYSTEM = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\System"
$LMWIN = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Personalization"

# individual options that are impacted
$FixLogoff = "NoLogoff"
$FixTaskManager = "DisableTaskMgr"
$FixChangePassword = "DisableChangePassword"
$FixLock = "NoLockScreen"
$FixPowerOptions = "NoClose"
$FixUserSwitch = "HideFastUserSwitching"

# Uninstall Respondus Lockdown Browser
Uninstall-Package 

# Fix logoff
if(Get-ItemProperty -Path $CUEXPLORER -Name $FixLogoff -eq $null) {
    New-ItemProperty -Path $CUEXPLORER -Name $FixLogoff -Value 0
} else {
    Set-ItemProperty -Path $CUEXPLORER -Name $FixLogoff -Value 0
}

# Fix lock screen
if(Get-ItemProperty -Path $LMWIN -Name $FixLock -eq $null) {
    New-ItemProperty -Path $LMWIN -Name $FixLock -Value 0
} else {
    Set-ItemProperty -Path $LMWIN -Name $FixLock -Value 0
}

# Fix Change Password
if(Get-ItemProperty -Path $CUSYSTEM -Name $FixChangePassword -eq $null) {
    New-ItemProperty -Path $CUSYSTEM -Name $FixChangePassword -Value 0
} else {
    Set-ItemProperty -Path $CUSYSTEM -Name $FixChangePassword -Value 0
}

# Fix Power Options
if(Get-ItemProperty -Path $CUEXPLORER -Name $FixPowerOptions -eq $null) {
    New-ItemProperty -Path $CUEXPLORER -Name $FixPowerOptions -Value 0
} else {
    Set-ItemProperty -Path $CUEXPLORER -Name $FixPowerOptions -Value 0
}

# Fix Task Manager
if(Get-ItemProperty -Path $CUSYSTEM -Name $FixTaskManager -eq $null) {
    New-ItemProperty -Path $CUSYSTEM -Name $FixTaskManager -Value 0
} else {
    Set-ItemProperty -Path $CUSYSTEM -Name $FixTaskManager -Value 0
}

# Fix Switch User
if(Get-ItemProperty -Path $CUSYSTEM -Name $FixUserSwitch -eq $null) {
    New-ItemProperty -Path $CUSYSTEM -Name $FixUserSwitch -Value 0
} else {
    Set-ItemProperty -Path $CUSYSTEM -Name $FixUserSwitch -Value 0
}
