$ErrorActionPreference = 'Stop'
 
$packageArgs = @{
  packageName            = 'spideroakgroups'
  fileType               = 'MSI'
  url                    = 'https://spideroak.com/release/so.blue/msi_x86'
  url64bit               = 'https://spideroak.com/release/so.blue/msi_x64'
  checksum               = '2D9C5EEDB34EE85268769AA6AD82C9838BF7459C7303F8EAB1F72D40DFB9DE21'
  checksum64             = '236597382550AA55E9FFD94D038845F3706CAB230FE7E300EFA5C52399D2F4B1'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
  softwareName           = 'SpiderOak Groups *'
}
Install-ChocolateyPackage @packageArgs