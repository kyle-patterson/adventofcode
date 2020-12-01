### Stage 1: Find two numbers who sum to 2020, and output their product

$input = Get-Content "input.txt"

:loop foreach($i in $input){
    foreach($j in $input){
        if([int]$i + [int]$j -eq 2020){
            echo $([int]$i * [int]$j)
            break loop
        }
    }
}

### Stage 2: Find three numbers who sum to 2020, and output their product
:loop foreach($i in $input){
    foreach($j in $input){
        foreach($k in $input){
            if([int]$i + [int]$j + [int]$k -eq 2020){
                echo $([int]$i * [int]$j * [int]$k)
                break loop
            }
        }
    }
}
