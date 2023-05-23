$NumberToGuess = 1..100 | Get-Random
do {
  [int]$UserGuess = Read-Host -prompt "Please enter a number between 1 and 100" 
  if ($UserGuess -lt $NumberToGuess) {Write-Host "Pick a higher number" }
  elseif ($UserGuess -gt $NumberToGuess) {Write-Host "Pick a lower number" }
  else {write-host "congrats! you picked the right number" } 
} until ($NumberToGuess -eq $UserGuess)