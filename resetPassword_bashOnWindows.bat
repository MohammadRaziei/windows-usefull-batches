
# Resets the password for the default LXSS / WSL bash user
$lxssUsername = (Get-ItemProperty HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Lxss).DefaultUsername
lxrun /setdefaultuser root
bash -c "passwd $lxssUsername"
lxrun /setdefaultuser $lxssUsername