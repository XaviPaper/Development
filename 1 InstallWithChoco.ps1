Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# choco uninstall fluent-terminal -y
choco install fluent-terminal -y --force