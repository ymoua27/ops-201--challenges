# Script Name                auto.ps1
# Author Name                Yue Moua
# Date of latest revision    11/6/2023
# Purpose                    Write a Powershell script that automates the configuration of a new Windows 10 endpoint
# Citation                   Powershell commands were copied from https://github.com/superswan/Powershell-SysAdmin

# Enable File and Printer Sharing

Set-NetFirewallRule -DisplayGroup "File And Printer Sharing" -Enabled True

# Allow ICMP traffic
netsh advfirewall firewall add rule name="Allow incoming ping requests IPv4" dir=in action=allow protocol=icmpv4 

# Enable Remote management
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f

# Remove bloatware
iex ((New-Object System.Net.WebClient).DownloadString('https://git.io/debloat'))

# Enable Hyper-V
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All

#Disable SMBv1, an insecure protocol
Set-SmbServerConfiguration -EnableSMB1Protocol $false -Force
