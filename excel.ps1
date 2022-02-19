install-module importexcel
get-process| Export-Excel './t.xlsx'
import-module importexcel
set-executionpolicy remotesigned
Get-Process | Where Company | Export-Excel -path 'D:\Powershell HCL\t2.xlsx' -Show `
-IncludePivotTable -PivotRows Company -PivotData Handles -IncludePivotChart -ChartType PieExploded3D