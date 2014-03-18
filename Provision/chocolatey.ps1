iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))
$env:PATH += ";$env:systemdrive\chocolatey\bin"