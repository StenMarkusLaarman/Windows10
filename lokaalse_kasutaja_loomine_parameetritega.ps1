#kasutaja andmed käsurea parameetrina
param(
$kasutajaNimi,
$taisNimi,
$kontokirjeldus
)
#määrame kasutaja parooli
$KasutajaParool = ConvertTo-SecureString "Parool1!" -AsPlainText -Force
#loome kasutaja kasutades antud andmeid
New-LocalUser $kasutajaNimi -Password $KasutajaParool -FullName $taisNimi -Description $kontokirjeldus