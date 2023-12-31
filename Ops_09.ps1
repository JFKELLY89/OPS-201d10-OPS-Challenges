# Output all events from the System event log that occurred in the last 24 hours to a file on your desktop named last_24.txt.

$End = Get-Date
$Begin = $End.AddHours(-24)
Get-EventLog -LogName System -After $Begin -Before $End | Out-File -Path "$env:USERPROFILE\Desktop\last_24.txt" -NoTypeInformation

# Output all “error” type events from the System event log to a file on your desktop named errors.txt.

Get-EventLog -LogName System -EntryType Error | Out-File -Path "$env:USERPROFILE\Desktop\errors.txt" -NoTypeInformation

# Print to the screen all events with ID of 16 from the System event log.
Get-EventLog -LogName System | Where-Object {$_.EventID -eq 16}

# Print to the screen the most recent 20 entries from the System event log.
Get-EventLog -LogName System -ID 16 -Newest 20

# Print to the screen all sources of the 500 most recent entries in the System event log. Ensure that the full lines are displayed (get rid of the … and show the entire text).
Get-EventLog -LogName System -Newest 500 | Format-Table -AutoSize -Wrap
