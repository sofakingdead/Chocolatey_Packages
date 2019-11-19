$ErrorActionPreference = 'Stop'
 
$packageArgs = @{
  packageName            = 'BlueJeansApp'
  fileType               = 'MSI'
  url                    = 'https://swdl.bluejeans.com/desktop-app/win/2.14.491.0/BlueJeans.2.14.491m.msi'
  checksum               = '22620A3BE478260222E23F93DF26BAC7B86E12F28737EB3C9AD368E18B479644'
  checksumType           = 'sha256'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
  softwareName           = 'BlueJeans App *'
}
Install-ChocolateyPackage @packageArgs