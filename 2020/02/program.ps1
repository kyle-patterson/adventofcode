$input = Get-Content "input.txt"

# STEP 1
$validCount = 0

foreach($obj in $input)
{
    $strSplit = $obj -split " "
    $rangeSplit = $strSplit[0] -split "-"
    $letterToEnforce = $strSplit[1][0]
    $p = $strSplit[2]

    $min = [int]$rangeSplit[0]
    $max = [int]$rangeSplit[1]

    $letterCount = ($p.ToCharArray() | Where-Object {$_ -eq $letterToEnforce} | Measure-Object).Count

    if($letterCount -ge $min -and $letterCount -le $max){
        $validCount++
    }
}

echo $validCount

# STEP 2
$validCount = 0

foreach($obj in $input)
{
    $strSplit = $obj -split " "
    $rangeSplit = $strSplit[0] -split "-"
    $letterToEnforce = $strSplit[1][0]
    $p = $strSplit[2]

    $low = [int]$rangeSplit[0]-1
    $high = [int]$rangeSplit[1]-1

    if($p[$low] -eq $letterToEnforce -xor $p[$high] -eq $letterToEnforce)
    {
        $validCount++
    }
}

echo $validCount