
$str = "Service name1","Service name2","Service nameN"


foreach ($LINE in $str) 
{

    Try
    {
       Get-Service $LINE | Stop-Service   
    }
    Catch
    {
        
        Write-Host "An error occurred trying stop: $LINE " -ForegroundColor Red        
        Write-Host $_.Exception.Message
    }
    Finally
    {
        
        Write-Host "finish trying start: $LINE "
    }

}


Write-Host "finish trying stop servi1ces"