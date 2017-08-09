$packageName = 'adobereader-update'
$installerPath = $env:TEMP
$filePath = Join-Path $installerPath 'acroreadupdater.msp'
$args = "/p $filePath /quiet"
$url = 'http://ardownload.adobe.com/pub/adobe/reader/win/11.x/11.0.21/misc/AdbeRdrUpd11021_MUI.msp'
Get-ChocolateyWebFile $packageName $filePath $url -Checksum E13E3F266EF6192A157AF5DB5DCF4356C705DC2E4B13B61394FEB8CAC07EA253 -ChecksumType 'sha256'
#no support for msp files: https://github.com/chocolatey/choco/issues/509
Start-ChocolateyProcessAsAdmin $args 'msiexec'
Remove-Item $filePath -Force