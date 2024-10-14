param (
    [string]$logFile = "C:\Logs\PingLog.log", #Default parameters
    [string]$testAddress = "www.google.de"
)

while($true){

    if (!(Test-Connection -ComputerName $testAddress -Quiet)){
        
        $dateString = Get-Date

        $message = "Timeout der Connection: " + $dateString
        Write-Host $message -ForegroundColor Red

        Add-Content -Path $logFile -Value $message
    }
}
