$timestamp = Get-Date -Format o | ForEach-Object { $_ -replace ":", "." }
start-transcript -path "C:\repos\git-hub_personal\logs\push$timestamp.log"
git status
git add .
git commit -m "$timestamp Commit"
git push -u origin main
git status
Stop-Transcript
