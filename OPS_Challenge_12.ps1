# Create a local file called network_report.txt that holds the contents of an ipconfig /all command.
Get-NetIPConfiguration -All > C:\Users\Auser\Desktop\network_report.txt

# Use Select-String to search network_report.txt and return only the IP version 4 address.
Select-String -Path C:\Users\Auser\Desktop\network_report.txt -Pattern 'IPV4Address'
 
# Remove the network_report.txt when you are finished searching it.
Remove-Item C:\Users\Auser\Desktop\network_report.txt

# Instead of creating network_report.txt, use piping to store the output in memory and search it there.
Get-NetIPConfiguration -All | Select-String -Pattern 'IPV4Address'