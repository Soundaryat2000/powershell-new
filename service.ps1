
#Param($servicelist = (Get-Content (Read-Host ("Enter path of the file that has services ")))) 
$servicelist=Get-Content -path 'C:\Users\Administrator.DEMO\Desktop\servicelist.txt' 
$servicelist
 foreach($s in $servicelist){​​    
$servicedetails = Get-Service|where name -eq  $s       
try{​​        Start-Sleep -Seconds 10        
if($servicedetails.status -eq "Running"){​​            
Write-Host "Service $s is Running" -WarningAction SilentlyContinue -ErrorAction SilentlyContinue          
 Get-service -name $s | Out-file 'C:\Users\Administrator.DEMO\Desktop\servicereport_positive.txt' -Force -append         }​​      
 else{​​           Start-Service   $s            Write-Host "Service $s is not Running" -WarningAction SilentlyContinue -ErrorAction SilentlyContinue   
               }​​    }​​   
catch{​​        
Write-Host "Service cannot be started"       
Get-service |where name -eq $s  | Out-file 'C:\Users\Administrator.DEMO\Desktop\servicereport_negative.txt'  -Force -append   }​​   }​​ 



