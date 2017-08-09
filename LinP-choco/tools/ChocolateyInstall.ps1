$ErrorActionPreference = 'Stop'
 
$packageArgs = @{
  packageName            = 'Linphone'
  fileType               = 'EXE'
  url                    = 'http://www.linphone.org/releases/windows/Linphone-4.0-win32.exe'
  checksum               = '9EC900CF76A600B70BB615EE39F73A5687ADA90F03BAC326F55AD264CB1628D9'
  checksumType           = 'sha256'
  silentArgs             = '/S'
  validExitCodes         = @(0)
  softwareName           = 'Linphone *'
}
Install-ChocolateyPackage @packageArgs