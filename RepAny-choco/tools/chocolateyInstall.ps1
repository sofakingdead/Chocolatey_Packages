$packageArgs = @{
  packageName            = 'republic_anywhere'
  fileType               = 'EXE'
  url                    = 'https://anywhr.info/l/download/windows'
  checksum               = '72B0FF298B8DC66D61CFAEA9627CDC8F69F92A5E89A1EE488310D5BE1F0D042E'
  checksumType           = 'sha256'
  silentArgs             = '/sp /silent /norestart /s /S /q /Q /quiet /silent /SILENT /VERYSILENT'
  validExitCodes         = @(0)
  softwareName           = 'Install Republic Anywhere.exe'
}
Install-ChocolateyPackage @packageArgs