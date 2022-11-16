$Eesnimi = Read-Host -Prompt "Sisesta eesnimi"
$Perenimi = Read-Host -Prompt "Sisesta perkonna nimi"
$Kasutajanimi = $Eesnimi + "." + $Perenimi
$Taisnimi = $Eesnimi + " " + $Perenimi
Write-Output $Taisnimi
$kontokirjeldus = "skriptiga kasutja"
$KasutajaParool = ConvertTo-SecureString "Parool1!" -AsPlainText -Force
#loome kasutaja kasutadaes parooli
New-LocalUser $Kasutajanimi -Password $KasutajaParool -FullName $Taisnimi -Description $kontokirjeldus