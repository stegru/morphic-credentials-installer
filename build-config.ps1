<#
  This script creates the installer with the site config for Morphic.
#>

if (!(Test-Path -Path siteconfig.json5)) {
    Write-Output ""
    Write-Output "Please provide the siteconfig.json5 file."
    Write-Output ""
    exit 1
}

function Clean {
    rm *.wixobj, output\*.wixpdb
}

Clean

Remove-Item -Recurse output
mkdir output

candle -out MorphicConfig.wixobj MorphicConfig.wxs
light -ext WiXUtilExtension -ext WixUIExtension MorphicConfig.wixobj -sacl -o output/MorphicConfig.msi

Clean
