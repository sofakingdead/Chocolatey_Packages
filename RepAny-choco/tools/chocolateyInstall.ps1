$packageArgs = @{
  packageName            = 'republic_anywhere'
  fileType               = 'EXE'
  url                    = 'https://anywhr.info/l/download/windows'
  checksum               = '4CFD990BF918007960C082F477188DB13064601F4E9E6FE92C3342CA729E6F5A'
  checksumType           = 'sha256'
  silentArgs             = '/sp /silent /norestart /s /S /q /Q /quiet /silent /SILENT /VERYSILENT'
  validExitCodes         = @(0)
  softwareName           = 'Install Republic Anywhere.exe'
}
Install-ChocolateyPackage @packageArgs