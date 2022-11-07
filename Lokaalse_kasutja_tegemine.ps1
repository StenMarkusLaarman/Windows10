$KasutajaParool = ConvertTo-SecureString "Parool1!" -AsPlainText -Force
#loome kasutaja kasutadaes parooli
New-LocalUser "kasutjal" -Password $KasutajaParool -FullName "Esmane Tavakasutja" -Description "Local Account - kasutjal"