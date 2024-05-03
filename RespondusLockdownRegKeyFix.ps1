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

# Fix logoff
Set-ItemProperty -Path $CUEXPLORER -Name $FixLogoff -Value 0

# Fix lock screen
Set-ItemProperty -Path $LMWIN -Name $FixLock -Value 0

# Fix Change Password
Set-ItemProperty -Path $CUSYSTEM -Name $FixChangePassword -Value 0

# Fix Power Options
Set-ItemProperty -Path $CUEXPLORER -Name $FixPowerOptions -Value 0

# Fix Task Manager
Set-ItemProperty -Path $CUSYSTEM -Name $FixTaskManager -Value 0

# Fix Switch User
Set-ItemProperty -Path $CUSYSTEM -Name $FixUserSwitch -Value 0