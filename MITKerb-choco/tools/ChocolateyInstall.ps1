$ErrorActionPreference = 'Stop'
 
$packageArgs = @{
  packageName            = 'mitkerberos'
  fileType               = 'MSI'
  url                    = 'http://web.mit.edu/kerberos/dist/kfw/4.1/kfw-4.1-i386.msi'
  url64                  = 'http://web.mit.edu/kerberos/dist/kfw/4.1/kfw-4.1-amd64.msi'
  checksum               = '54571B1BFBF0B6586F205803475E82C6ACF15063F448258C13567C1EA61A1EB8'
  checksum64             = 'CDCB7EC4ADDD9716C0E0C74FE0944CB97C83BFEEBC2C267E63E8CAC2AD3DC872'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  silentArgs             = '/qn /norestart'
  validExitCodes         = @(0)
  softwareName           = 'MIT Kerberos for Windows *'
}
Install-ChocolateyPackage @packageArgs