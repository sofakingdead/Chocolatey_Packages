$ErrorActionPreference = 'Stop'
 
$packageArgs = @{
  packageName            = 'spideroakgroups'
  fileType               = 'MSI'
  url                    = 'https://spideroak.com/release/so.blue/msi_x86'
  url64bit               = 'https://spideroak.com/release/so.blue/msi_x64'
  checksum               = '8DF8AD1E3938E48C8E0F21D8FABDC9C175DD7283B39C8BA2DF66DC736E937C36'
  checksum64             = '1E1962D6B26677B1A582049438D4E978A2D5FE1D6FBAF070CC66381BAFD01E29'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
  softwareName           = 'SpiderOak Groups *'
}
Install-ChocolateyPackage @packageArgs