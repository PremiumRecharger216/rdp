@echo off
del /f "C:\Users\Public\Desktop\Epic Games Launcher.lnk" > out.txt 2>&1
del /f "C:\Users\Public\Desktop\Unity Hub.lnk" > out.txt 2>&1
del /f "C:\Users\Public\Desktop\R 4.4.1.lnk" > out.txt 2>&1
net config server /srvcomment:"Windows Server 2019 By lucifer" > out.txt 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /V EnableAutoTray /T REG_DWORD /D 0 /F > out.txt 2>&1
net user lucifer JohnCena?6969 /add >nul
net localgroup administrators lucifer /add >nul
net user lucifer /active:yes >nul
net user installer /delete
diskperf -Y >nul
sc config Audiosrv start= auto >nul
sc start audiosrv >nul
ICACLS C:\Windows\Temp /grant lucifer:F >nul
ICACLS C:\Windows\installer /grant lucifer:F >nul
echo Successfully installed! If RDP is dead, rebuild again.
echo IP:
tasklist | find /i "ngrok.exe" >Nul && curl -s localhost:4040/api/tunnels | jq -r .tunnels[0].public_url || echo "Failed to retreive NGROK authtoken"
echo Username: lucifer
echo Password: JohnCena?6969
echo You can login now
ping -n 10 127.0.0.1 >nul
