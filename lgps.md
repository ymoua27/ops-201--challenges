# Output all events from the System event log that occurred in the last 24 hours to a file on your desktop named last_24.txt.
Get-WinEvent -LogName System -MaxEvents 1000 | Where-Object { $_.TimeCreated -ge (Get-Date).AddDays(-1) } | Format-Table -AutoSize | Out-File -FilePath "$env:USERPROFILE\Desktop\last_24.txt"


# Output all “error” type events from the System event log to a file on your desktop named errors.txt.
Get-WinEvent -LogName System -MaxEvents 1000 | Where-Object { $_.LevelDisplayName -eq 'Error' } | Format-Table -AutoSize | Out-File -FilePath "$env:USERPROFILE\Desktop\errors.txt"



# Print to the screen all events with ID of 16 from the System event log.
Get-WinEvent -LogName System -MaxEvents 1000 | Where-Object { $_.Id -eq 16 } | Format-Table -AutoSize



# Print to the screen the most recent 20 entries from the System event log.
Get-WinEvent -LogName System -MaxEvents 20 | Format-Table -AutoSize



# Print to the screen all sources of the 500 most recent entries in the System event log. Ensure that the full lines are displayed.
Get-WinEvent -LogName System -MaxEvents 500 | Format-Table -AutoSize -Wrap



## Comments

Get-WinEvent -LogName System -MaxEvents 1000 | Where-Object { $_.TimeCreated -ge (Get-Date).AddDays(-1) } | Format-Table -AutoSize | Out-File -FilePath "$env:USERPROFILE\Desktop\last_24.txt"

**Get-WinEvent** is a cmdlet to retrieve event logs

**-LogName System** means that wen want to get events from the System event log

**-MaxEvents 1000** only retrieve up t0 1000

**| Where-Object { $_.TimeCreated -ge (Get-Date).AddDays(-1) }** The | symbol is used to pipe the output of the previous command to the Where-Object cmdlet, which filters the events

**{ $_.TimeCreated -ge (Get-Date).AddDays(-1) }** Filters events of TimeCreated where it is greater than or equal to current date minus one  day

**| Format-Table -AutoSize** Filters events to Format-Table cmdlet and -Autosize formats it into a table 

**| Out-File -FilePath "$env:USERPROFILE\Desktop\last_24.txt"** Filters event to Out-File cmdlet. Specifies file path and names it last_24.txt

_Other script lines are similar, but execute different operations_