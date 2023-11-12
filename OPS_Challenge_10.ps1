
# Comand that prints the active processes and ordered them by highest CPU time consumption
Get-Process | Sort-Object -Property CPU -Descending

# Comand that prints all active processes ordered by highest Process Identification Number at the top.
Get-Process | Sort-Object -Property Id

# Comand that prints the top five active processes ordered by highest Working Set (WS(K)) at the top.
Get-Process | Sort-Object -Property WorkingSet -Descending | Select-Object -First 5

# Start a process to open "https://owasp.org/www-project-top-ten/" via Google Chrome
Start-Process "chrome" "https://owasp.org/www-project-top-ten/"

# Start the process Notepad ten times using a for loop.
for ($Note = 1; $Note -le 10; $Note++) {
    Start-Process "notepad"
}

# Close all instances of Notepad.
Stop_Process -Name "notepad" -Force

# Kill a process by its Process Identification Number. Choose a process whose termination won’t destabilize the system, such as Google Chrome or MS Edge.

$PID = Get-Process -Name "Edge" | Select-Object -First 1 -ExpandProperty Id
Stop-Process -Id $PID -Force

