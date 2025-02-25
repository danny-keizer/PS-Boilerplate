function Copy-Remote {
    param (
        [string]$Remote,
        [string]$Source,
        [string]$Destination
    )

    $MYSESSION = New-PSSession -ComputerName $Remote
    Copy-Item -Path $Source -Destination $Destination -ToSession $MYSESSION
    Remove-PSSession -Session $MYSESSION
}
