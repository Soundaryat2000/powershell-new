$details = Get-WmiObject Win32_logicaldisk  -Filter "DriveType=3" |select -property DeviceID,@{Name="Free (%)";Expression={"{0:N2}" -f((($_.freespace/1gb) / ($_.size/1gb))*100)}},@{Name="Utilize (%)";Expression={"{0:N2}" -f(100 - ((($_.freespace/1gb) / ($_.size/1gb))*100))}}
 $details
 for($i -eq 0; $i -lt $t; $i++)
 {
 if($details.'Utilize (%)'[$i] -gt 60) 
 {  
 Write-host("Unhealthy")}
else
{  
Write-host("Healthy")
} 
}