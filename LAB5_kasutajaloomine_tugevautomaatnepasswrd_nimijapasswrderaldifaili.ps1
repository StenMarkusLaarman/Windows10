$Eesnimi = Read-Host -Prompt "Sisesta eesnimi"
$Perenimi = Read-Host -Prompt "Sisesta perkonna nimi"
$Kasutajanimi = $Eesnimi + "." + $Perenimi
$Taisnimi = $Eesnimi + " " + $Perenimi
Add-Type -AssemblyName System.Web
$parool = [System.Web.Security.Membership]::GeneratePassword(8,2)
Write-Output $Taisnimi
Write-Output $parool
$kontokirjeldus = "skriptiga kasutja"
$KasutajaParool = ConvertTo-SecureString $parool -AsPlainText -Force
#loome kasutaja kasutadaes parooli
New-LocalUser $Kasutajanimi -Password $KasutajaParool -FullName $Taisnimi -Description $kontokirjeldus
$Eesnimi | Out-File -FilePath C:\Users\Administrator\Desktop\skriptimine\kasutajanimijapasswrd.txt -Append –NoNewline
$parool | Out-File -FilePath C:\Users\Administrator\Desktop\skriptimine\kasutajanimijapasswrd.txt -Append