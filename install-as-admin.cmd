@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin

@choco install curl -y

@rem @curl -o %temp%\oscript-setup.exe http://oscript.io/downloads/latest/exe
@rem 
@curl -o %temp%\oscript-setup.exe http://oscript.io/downloads/night-build/exe

@%temp%\oscript-setup.exe /silent /log="%temp%\oscript-setup.log" /saveinf="%temp%\oscript-setup-settings.txt"

@%temp%\oscript-setup.exe /silent /log="%temp%\oscript-setup.log"  /saveinf="%temp%\oscript-setup-settings.ini"

@type %temp%\oscript-setup.log
