<#
Tyler Livingston
Advent of Code - Day 2 Part 1
https://adventofcode.com/2021/day/2
#>

$vertical_value = 0
$forward_value = 0

Import-Csv -Path "C:\users\tyjli\Desktop\puzzle_input.csv" | Foreach-Object { 
    foreach ($direction in $_.PSObject.Properties) {
        if ($direction.value -like 'forward *') {
            $forward_value = $forward_value + [int]$direction.value.Replace("forward ", "")
        }
        if ($direction.value -like 'up *') {
            $vertical_value = $vertical_value - [int]$direction.value.Replace("up ", "")
        }
        if ($direction.value -like 'down *') {
            $vertical_value = $vertical_value + [int]$direction.value.Replace("down ", "")
        }
    }
}

$total = $forward_value * $vertical_value
"Found Total: " + $total
