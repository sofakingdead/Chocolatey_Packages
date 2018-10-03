$packageName = 'choco-reboot-at'
#Core Extension dependency
$pp          = Get-PackageParameters
 
# delete old task name if it exists from previous versions
$GotTask = (&schtasks /query /tn "choco reboot at") 2> $null
if ($GotTask -ne $null){
     &SchTasks /DELETE /TN "choco reboot at" /F 
   }
 
$GotTask = (&schtasks /query /tn choco-reboot-at) 2> $null
if ($GotTask -ne $null){
     Write-Host Existing choco-reboot-at scheduled task found. Keeping existing scheduled task. If you want to change the task runtime or abort time, uninstall and reinstall the package. -foreground magenta -background blue
     exit
   }

Write-Host ""
Write-Host "choco-reboot-at Summary:" -foreground magenta
 
if ($pp["TIME"] -eq $null -or $pp["TIME"] -eq ''){
       Write-Host " * TIME NOT specified, defaulting to 2 AM." -foreground magenta
     $RunTime = "02:00"
     } else {
     $RunTime = $pp["TIME"]
     Write-Host " * TIME specified as $RunTime." -foreground magenta
      } 

#user inputs nothing
if (($pp["MONTHLY"] -eq $null -or $pp["MONTHLY"] -eq '') -and ($pp["WEEKLY"] -eq $null -or $pp["WEEKLY"] -eq '') -and ($pp["DAILY"] -eq $null -or $pp["DAILY"] -eq '') ){
      Write-Host " * MONTHLY, WEEKLY nor DAILY NOT specified, defaulting to MONTHLY as it's the least obtrusive." -foreground magenta
      SchTasks /CREATE /SC MONTHLY /MO LASTDAY /RU SYSTEM /RL HIGHEST /TN choco-reboot-at /TR "shutdown /r /t 60 /c "Restart via task scheduled script"" /ST $RunTime /F
    SchTasks /query /tn "choco-reboot-at"
    Start-Sleep -s 10
    exit
    }

if ($pp["DAILY"] -eq $null -or $pp["DAILY"] -eq ''){
       Write-Host " * DAILY NOT specified." -foreground magenta
     } else {
     Write-Host " * DAILY specified." -foreground magenta
     SchTasks /CREATE /SC DAILY /RU SYSTEM /RL HIGHEST /TN choco-reboot-at /TR "shutdown /r /t 60 /c" /ST $RunTime /F
     SchTasks /query /tn "choco-reboot-at"
     Start-Sleep -s 10
     exit
     }  

if ($pp["MONTHLY"] -eq $null -or $pp["MONTHLY"] -eq ''){
       Write-Host " * MONTHLY NOT specified." -foreground magenta
     } else {
     Write-Host " * MONTHLY specified." -foreground magenta
     SchTasks /CREATE /SC MONTHLY /MO LASTDAY /RU SYSTEM /RL HIGHEST /TN choco-reboot-at /TR "shutdown /r /t 60 /c "Restart via task scheduled script"" /ST $RunTime /F
     SchTasks /query /tn "choco-reboot-at"
     Start-Sleep -s 10
     exit
     }  

if ($pp["WEEKLY"] -eq $null -or $pp["WEEKLY"] -eq ''){
       Write-Host " * WEEKLY NOT specified." -foreground magenta
     } else {
     Write-Host " * WEEKLY specified." -foreground magenta
       if ($pp["DAY"] -eq $null -or $pp["DAY"] -eq ''){
            Write-Host " * DAY NOT specified, defaulting to SUNDAY." -foreground magenta
            SchTasks /CREATE /SC WEEKLY /D SUN /RU SYSTEM /RL HIGHEST /TN choco-reboot-at /TR "shutdown /r /t 60 /c "Restart via task scheduled script"" /ST $RunTime /F
        SchTasks /query /tn "choco-reboot-at"     
          } else {
        $RunDay = $pp["DAY"]
            Write-Host " * DAY specified as $RunDay." -foreground magenta
        SchTasks /CREATE /SC WEEKLY /D $pp["DAY"] /RU SYSTEM /RL HIGHEST /TN choco-reboot-at /TR "shutdown /r /t 60 /c "Restart via task scheduled script"" /ST $RunTime /F
        SchTasks /query /tn "choco-reboot-at"     
        }
    }

Start-Sleep -s 10