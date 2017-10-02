$ErrorActionPreference = 'Stop'
 
$packageArgs = @{
  packageName            = 'BlueJeansApp'
  fileType               = 'MSI'
  url                    = 'https://swdl.bluejeans.com/desktop/win/1.30/1.30.18/BlueJeans.1.30.18m.msi'
  checksum               = 'C3855795250B5574B4DE2AA96C228D3FCEAC38AAEC8CBA758273D609D0ECCA73'
  checksumType           = 'sha256'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
  softwareName           = 'BlueJeans App *'
}
Install-ChocolateyPackage @packageArgs