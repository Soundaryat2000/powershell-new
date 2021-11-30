$num1=read-host("Enter Num1")
$num1
$num2=read-host("Enter Num2")
$num2
$num3=read-host("Enter Num3")
$num3

if($num1 -gt $num2 )
{
 if($num1 -gt $num3 ){

    write-host($num1)
    }
    }
elseif($num2 -gt $num1){if($num2 -gt $num3)
{

    write-host($num2)
    }
    }
else
     {$num3}
