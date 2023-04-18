# BeforeInstall.ps1

# Stop the IIS service
Stop-Service -Name W3SVC -Force

# Remove existing files from the destination directory
Remove-Item -Path C:\inetpub\wwwroot\* -Force -Recurse

# Copy the new files from the source directory to the destination directory
Copy-Item -Path $Env:CODEDEPLOY_DEPLOYMENT_ID/MyApp/* -Destination C:\inetpub\wwwroot -Force -Recurse

# Start the IIS service
Start-Service -Name W3SVC