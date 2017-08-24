$packageArgs = @{
  packageName            = 'republic_anywhere'
  fileType               = 'EXE'
  url                    = 'https://anywhr.info/l/download/windows'
  checksum               = 'DF6B7A31216CF453E0FE2424276EFEFD9F9F48AF30BFE4A55A1F5BF287CD0B6C'
  checksumType           = 'sha256'
  silentArgs             = '/sp /silent /norestart /s /S /q /Q /quiet /silent /SILENT /VERYSILENT'
  validExitCodes         = @(0)
  softwareName           = 'Install Republic Anywhere.exe'
}
Install-ChocolateyPackage @packageArgs
