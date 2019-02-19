<#
  This script creates the installer with the client credentials for Morphic.
#>

if (!(Test-Path -Path secret.txt)) {
    Write-Output ""
    Write-Output "Please provide the secret.txt file."
    Write-Output ""
    exit 1
}

function Clean {
    rm *.wixobj, output\*.wixpdb
}

Clean

Remove-Item -Recurse output
mkdir output

candle -out MorphicCredentials.wixobj MorphicCredentials.wxs
light -ext WiXUtilExtension -ext WixUIExtension MorphicCredentials.wixobj -sacl -o output/MorphicCredentials.msi

Clean
