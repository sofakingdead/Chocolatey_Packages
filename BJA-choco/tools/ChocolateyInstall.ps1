$ErrorActionPreference = 'Stop'
 
$packageArgs = @{
  packageName            = 'BlueJeansApp'
  fileType               = 'MSI'
  url                    = 'https://swdl.bluejeans.com/desktop/win/1.31/1.31.16/BlueJeans.1.31.16m.msi'
  checksum               = '31C493295909B9381B9FD49C57AF48E4C2E0A8D1C68AA6DAED89B48D9B9E0BDA'
  checksumType           = 'sha256'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
  softwareName           = 'BlueJeans App *'
}
Install-ChocolateyPackage @packageArgs