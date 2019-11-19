$packageArgs = @{
  packageName            = 'republic_anywhere'
  fileType               = 'EXE'
  url                    = 'https://anywhr.info/l/download/windows'
  checksum               = '34B51206CEFD544005AAA8B0FCE6A83F72F211EA2C1D1ACC140B29D8745D5169'
  checksumType           = 'sha256'
  silentArgs             = '/sp /silent /norestart /s /S /q /Q /quiet /silent /SILENT /VERYSILENT'
  validExitCodes         = @(0)
  softwareName           = 'Install Republic Anywhere.exe'
}
Install-ChocolateyPackage @packageArgs