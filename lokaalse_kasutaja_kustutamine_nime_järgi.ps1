$Eesnimi = Read-Host -Prompt "Sisesta eesnimi"
$Perenimi = Read-Host -Prompt "Sisesta perkonna nimi"
$Kasutajanimi = $Eesnimi + "." + $Perenimi
$Taisnimi = $Eesnimi + " " + $Perenimi
try {
    Remove-LocalUser -Name $Kasutajanimi -ErrorAction stop
    }
catch {
    echo "midagi läks valesti"
    Exit
    }
echo "Kasutaja on kustutatud"