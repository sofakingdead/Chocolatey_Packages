$packageArgs = @{
  packageName            = 'republic_anywhere'
  fileType               = 'EXE'
  url                    = 'https://anywhr.info/l/download/windows'
  checksum               = '4B45597FA25D0322BE9E6FAF6E11AF529A0DDAA546451319D285D5119F2895E1'
  checksumType           = 'sha256'
  silentArgs             = '/sp /silent /norestart /s /S /q /Q /quiet /silent /SILENT /VERYSILENT'
  validExitCodes         = @(0)
  softwareName           = 'Install Republic Anywhere.exe'
}
Install-ChocolateyPackage @packageArgs