$ErrorActionPreference = 'Stop'
 
$packageArgs = @{
  packageName            = 'BlueJeansApp'
  fileType               = 'MSI'
  url                    = 'https://swdl.bluejeans.com/desktop-app/win/2.7.513.0/BlueJeans.2.7.513m.msi'
  checksum               = '90D67351DC28B582043363B2630B0CAF83B28BE254C7D76E0CBCCF226B745BF5'
  checksumType           = 'sha256'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
  softwareName           = 'BlueJeans App *'
}
Install-ChocolateyPackage @packageArgs