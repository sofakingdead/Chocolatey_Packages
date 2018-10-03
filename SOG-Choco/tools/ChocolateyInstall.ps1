$ErrorActionPreference = 'Stop'
 
$packageArgs = @{
  packageName            = 'spideroakgroups'
  fileType               = 'MSI'
  url                    = 'https://spideroak.com/release/so.blue/msi_x86'
  url64bit               = 'https://spideroak.com/release/so.blue/msi_x64'
  checksum               = '1249778D2EFF32DBD7AF6CD5A44389BB7C0368187C01E3707376AF2B5C5BBD5A'
  checksum64             = 'ED28C40ACCCE637EDC3669EBA73ADF214AAAE7D599BCBE259723A050BB4CEE47'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
  softwareName           = 'SpiderOak Groups *'
}
Install-ChocolateyPackage @packageArgs