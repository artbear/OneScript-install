@curl -o %temp%\oscript-setup.exe http://oscript.io/downloads/latest/msi
@rem @curl -o %temp%\oscript-setup.exe http://oscript.io/downloads/night-build/msi

@%temp%\oscript-setup.exe /silent /log="%temp%\oscript-setup.log"
@rem @%temp%\oscript-setup.exe /silent /log="%temp%\oscript-setup.log" /loadinf="%temp%\oscript-setup-settings.ini"

@type %temp%\oscript-setup.log