$ErrorActionPreference = 'Stop'
 
$packageArgs = @{
  packageName            = 'exacqvision'
  fileType               = 'MSI'
  url                    = 'http://cdnpublic.exacq.com/8.6/exacqVisionClient-8.6.1.115131.msi'
  url64bit               = 'http://cdnpublic.exacq.com/8.6/exacqVisionClient-8.6.1.115131_x64.msi'
  checksum               = '39B598311640ECCC04DCD2AE4D9A468ACF05B958BF83A8B2E57714F49920F377'
  checksum64             = 'E0583A30B92F3B5ACC1D966F39CB88F963D6F44C445B3E671DEA6CBE21DB56FD'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  silentArgs             = '/qn /norestart'
  validExitCodes         = @(0)
  softwareName           = 'Exacq Vision Client *'
}
Install-ChocolateyPackage @packageArgs