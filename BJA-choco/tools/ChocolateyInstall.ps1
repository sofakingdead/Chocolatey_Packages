$ErrorActionPreference = 'Stop'
 
$packageArgs = @{
  packageName            = 'BlueJeansApp'
  fileType               = 'MSI'
  url                    = 'https://swdl.bluejeans.com/desktop/win/1.28/1.28.10/BlueJeans.1.28.10m.msi'
  checksum               = '16CDEC110F539BC188CEFBABE86C8EDF6492EDBFF3C1385CD1D4FE9F75D55446'
  checksumType           = 'sha256'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
  softwareName           = 'BlueJeans App *'
}
Install-ChocolateyPackage @packageArgs