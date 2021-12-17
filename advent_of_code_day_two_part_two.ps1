<#
Tyler Livingston
Advent of Code - Day 2 Part 2
https://adventofcode.com/2021/day/2
#>

$aim = 0
$forward_value = 0
$depth = 0

Import-Csv -Path "C:\users\tyjli\Desktop\puzzle_input.csv" | Foreach-Object { 
    foreach ($direction in $_.PSObject.Properties) {
        if ($direction.value -like 'forward *') {
            $forward_value = $forward_value + [int]$direction.value.Replace("forward ", "")
            $depth = $depth + ([int]$direction.value.Replace("forward ", "") * $aim)
        }
        if ($direction.value -like 'up *') {
            $aim = $aim - [int]$direction.value.Replace("up ", "")
        }
        if ($direction.value -like 'down *') {
            $aim = $aim + [int]$direction.value.Replace("down ", "")
        }
    }
    # "Forward: " + $forward_value
    # "Depth: " + $depth
    # "Aim: " + $aim
}

$total = $forward_value * $depth
"Found Total: " + $total
