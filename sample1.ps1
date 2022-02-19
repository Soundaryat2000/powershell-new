 Get-CimInstance -ClassName Win32_OperatingSystem -ComputerName dc1,win1,wfa,aiqum| Select LastBootUpTime|Out-file 'C:\Users\Administrator.DEMO\Desktop\give1.txt' -append -force 
  Get-CimInstance -ClassName Win32_OperatingSystem -ComputerName dc1,win1,wfa,aiqum| Select LastBootUpTime|Out-file 'C:\Users\Administrator.DEMO\Desktop\give2.txt' -append -force  
  Get-CimInstance -ClassName Win32_OperatingSystem -ComputerName dc1,win1,wfa,aiqum| Select LastBootUpTime|Out-file 'C:\Users\Administrator.DEMO\Desktop\give2.txt' -append -force  
 $serverdetails=get-service -name vss       write-host $serverdetails.status 
 $d=read-host("enter service")$s=$d.status$s 
 $a=read-host("enter service")$b=get-service -name $aparam(if($b.status -eq "running"){write-host "available"}else{write-host "not available"start-service -name $a  } 
 get-ciminstanceGet-WmiObject -class Win32_OperatingSystem$UPTIME=Get-WmiObject -class Win32_OperatingSystem$up = [Management.ManagementDateTimeConverter]::ToDateTime($UPTIME.LastBootUpTime) | Out-String$up 
 $Hostname = hostname | Out-String$Hostname$Version = (Get-WmiObject -class Win32_OperatingSystem).Caption | Out-String$Version 
 $LastBootUpTime = Get-WmiObject Win32_OperatingSystem -Computername dc1 | Select -Exp LastBootUpTime$LastBootUpTime 
  New-PSSession -computername dc1Enter-PSSession 
 newpssession -name dc1Get-CimInstance -ClassName Win32_OperatingSystemhGet-CimInstance -ClassName Win32_OperatingSystem -ComputerName dc1| Select LastBootUpTime|Out-file 'C:\Users\Administrator.DEMO\Desktop\give.txt' -append -force 
 Get-Credential | Export-Clixml -path "C:\Users\yellepeddy.laksh\OneDrive - HCL Technologies Ltd\Desktop\Password IPCP\pwd.xml" 
 new-item -path 'C:\Users\Administrator.DEMO\Desktop\Demo' -itemtype 'Directory'new-item -path 'C:\Users\Administrator.DEMO\Desktop\Demo\file.txt' -itemtype 'File'set-content "Hi ,I am soundarya" -path 'C:\Users\Administrator.DEMO\Desktop\Demo\file.txt'  get-content -path 'C:\Users\Administrator.DEMO\Desktop\Demo\file.txt'test-path 'C:\Users\Administrator.DEMO\Desktop\Demo'  remove-item -path 'C:\Users\Administrator.DEMO\Desktop\Demo' -recurse -Erroraction SilentlyContinuetest-path 'C:\Users\Administrator.DEMO\Desktop\Demo\file.txt'      
