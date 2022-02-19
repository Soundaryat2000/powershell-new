  $disk = Get-WmiObject Win32_logicaldisk -ComputerName LocalHost -Filter "DriveType=3" |select -property DeviceID,<#@{Name="Size(GB)";Expression={[decimal]("{0:N0}" -f($_.size/1gb))}},@{Name="Free Space(GB)";Expression={[decimal]("{0:N0}" -f($_.freespace/1gb))}},#>@{Name="Free (%)";Expression={"{0:N2}" -f((($_.freespace/1gb) / ($_.size/1gb))*100)}},@{Name="Utilize (%)";Expression={"{0:N2}" -f(100 - ((($_.freespace/1gb) / ($_.size/1gb))*100))}}
  $t=$disk.Count
  for($i -eq 0;$i -lt $t; $i++)
  {
  $DeviceID=$disk.DeviceID[$i]
  $free=$disk.'Free (%)'
  $utilze=$disk.'Utilize (%)'
  $output+="<head>
  <title>Disk utilization</title>
  </head>
  <body><table> 
   <tr>   <th>DeviceID</th>    <th>free (%)</th>    <th>Utilize(%)</th>  </tr>
   <tr> <td> $t</td> <td>$free</td> <td> $utilze</td> </tr>
   </table>
   </body>
   </html>"
   $output| out-file "C:\Users\ELCOT\Desktop\disk.html"   

 
 
 
 
 $userCredentials = Import-CliXml -Path "C:\Users\ELCOT\Desktop\pwd.xml"
  $userCredentials
  $userCredentials.UserName
  $userCredentials.Password
  $User = $userCredentials.UserName
  $password =$userCredentials.Password
  $Credential = New-Object System.Management.Automation.PsCredential($User,$password)
  $From = "soundaryat2000@outlook.com"
  $To = "soundaryat2000@outlook.com"
  $Cc = "soundaryat2000@outlook.com"
  $Attachments="C:\Users\ELCOT\Desktop\text1.txt" 
   $SMTPServer = "smtp.outlook.com"
   $SMTPPort = "587"    
   $Subject = "Task"        
   $Body ="Task"        
   Send-MailMessage -From $From -to $To -Cc $Cc -Subject $Subject -Body $Body -Attachments $Attachments -SmtpServer $SMTPServer -Port $SMTPPort -Credential $Credential -UseSsl 
