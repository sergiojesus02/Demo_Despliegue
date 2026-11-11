$archivoOrigen = join-Path $PSScriptRoot 'origen\index.php'
$archivoDestino = join-Path $PSScriptRoot 'pruebas\index.php'

& php origen/index.php

if ($LASTEXITCODE - ne 0){
    write-host "Hay un error de sintaxis. No se publico el cambio"
    exit 1
}
copy-Item $archivoOrigen $archivoDestino -Force -ErrorAction stop
write-host "Versión publicada en el ambiente de pruebas"