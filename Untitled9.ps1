 $disk = Get-WmiObject Win32_logicaldisk |select -property DeviceID,@{Name="Free (%)";Expression={"{0:N2}" -f((($_.freespace/1gb) / ($_.size/1gb))*100)}},@{Name="Utilize (%)";Expression={"{0:N2}" -f(100 - ((($_.freespace/1gb) / ($_.size/1gb))*100))}}  
 $disk
 $details=$disk.'utilize (%)'    
 foreach($a in $details)
 {if($disk.'Utilize (%)' -gt 60)
  {$a
 Write-host("Unhealthy") -BackgroundColor red}
 else{ $a
 Write-host("Healthy") -BackgroundColor green} } 
