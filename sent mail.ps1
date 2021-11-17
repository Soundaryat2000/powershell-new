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
