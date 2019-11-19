$ErrorActionPreference = 'Stop'
 
$packageArgs = @{
  packageName            = 'spideroakgroups'
  fileType               = 'MSI'
  url                    = 'https://spideroak.com/release/so.blue/msi_x86'
  url64bit               = 'https://spideroak.com/release/so.blue/msi_x64'
  checksum               = 'E70382B3E7D082F059128DEDC904ED1F0082BD14FABC3991B28CD89126A1309F'
  checksum64             = '8A5DDEBDB9DFAAD6C41B716BF5F09C9806A5F2FA2C05A482B4138A4A62916AC1'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
  softwareName           = 'SpiderOak Groups *'
}
Install-ChocolateyPackage @packageArgs