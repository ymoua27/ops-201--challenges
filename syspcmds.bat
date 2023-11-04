# 1: Print active processes ordered by highest CPU time consumption

Get-Process | Sort-Object -Property CPU -Descending | Format-Table -AutoSize

# 2: Print active processes ordered by highest Process Identification Number (PID)

Get-Process | Sort-Object -Property Id | Format-Table -AutoSize

# 3: Print the top five active processes ordered by highest Working Set (WS(K))

Get-Process | Sort-Object -Property WS -Descending | Select-Object -First 5 | Format-Table -AutoSize

# 4: Start a browser process (e.g., Google Chrome or MS Edge) and open a URL

Start-Process "msedge.exe" -ArgumentList "https://owasp.org/www-project-top-ten/"

# 5: Start the Notepad process ten times using a for loop

for ($i = 1; $i -le 10; $i++) {
    Start-Process "notepad.exe"
}

# 6: Close all instances of Notepad
Get-Process "notepad" | ForEach-Object { Stop-Process -Id $_.Id }

# 7: Kill a process by its Process Identification Number (PID)
# Replace '(PID)' with the actual PID of the process you want to terminate.
Stop-Process -Id (PIDC)

