<#
Tyler Livingston
Advent of Code - Day 3 Part 1
https://adventofcode.com/2021/day/3
#>

$value_zero = New-Object int[] 12;
$value_one = New-Object int[] 12;
$gamma_rate = "";
$epsilon_rate = "";

Import-Csv -Path "C:\users\tyjli\Desktop\diagnostic_report_updated.csv" | Foreach-Object { 
    foreach ($row in $_.PSObject.Properties) {
        for (($i = 0); $i -lt $row.Value.Length; $i++) {
            if ($row.Value[$i] -eq [string]0) {
                $value_zero[$i] = $value_zero[$i] + 1;
            }
            else {
                $value_one[$i] = $value_one[$i] + 1;
            }
        }
    }
}

for (($i = 0); $i -lt $value_zero.Length; $i++) {  
    if ($value_zero[$i] -gt $value_one[$i]) {
        $gamma_rate = $gamma_rate + 0;
        $epsilon_rate = $epsilon_rate + 1;
    }
    else {
        $gamma_rate = $gamma_rate + 1;
        $epsilon_rate = $epsilon_rate + 0;
    }
}

$gamma_rate = [convert]::ToInt32($gamma_rate , 2);
$epsilon_rate = [convert]::ToInt32($epsilon_rate , 2);

# "Gamma rate: " + $gamma_rate;
# "Epsilon rate: " + $epsilon_rate;

"Power consumption of the submarine: " + ($gamma_rate * $epsilon_rate);

