@echo off
color C
timeout 2 >nul
:a
echo.
echo.
echo.
echo 888b    888        d8888  .d88888b.  
echo 8888b   888       d88888 d88P" "Y88b 
echo 88888b  888      d88P888 888     888 
echo 888Y88b 888     d88P 888 888     888 
echo 888 Y88b888    d88P  888 888     888 
echo 888  Y88888   d88P   888 888     888 
echo 888   Y8888  d8888888888 Y88b. .d88P 
echo 888    Y888 d88P     888  "Y88888P"                                                                                                      
timeout 2 >nul
echo.
echo.
echo.
echo.
echo.
echo [+] game wanted
timeout 2 > nul
echo [+] game found!(javaw.exe)
timeout 2 >nul
echo [+] game is being optimized...
timeout 2 >nul
echo [+] please wait...
timeout 2 >nul
echo [+] succesfully!
goto 1
:c

:1
ipconfig /renew
ipconfig /flushdns
netsh interface ip delete arpcache
netsh winsock reset catalog
netsh int ip reset c:resetlog.txt
netsh int ip reset C:\tcplog.txt
netsh winsock reset catalog
netsh int tcp set global rsc=enabled
netsh int tcp set heuristics disabled
netsh int tcp set global dca=enabled
netsh int tcp set global chimney=enabled
netsh winsock reset catalog
netsh int tcp reset
netsh interface ip delete arpcache
netsh int tcp set global netdma=enabled
netsh int tcp set global dca=enabled
netsh int ipv4 set glob defaultcurhoplimit=64
netsh int ipv6 set glob defaultcurhoplimit=64
set supplemental congestionprovider=ctcp
netsh int tcp set heuristics disabled
netsh int tcp set global rss=enabled
netsh int tcp set global chimney=disabled
netsh int tcp set global rsc=disabled
netsh int tcp set global nonsackrttresiliency=disabled
netsh int tcp set global maxsynretransmissions=2
netsh int tcp set global fastopen=enabled
netsh interface tcp set global ecncapability=disabled
netsh int tcp set global autotuninglevel=restricted
netsh int tcp set global ecncapability=disabled
netsh int tcp set global timestamps=disabled
netsh int tcp set global initialRto=2000
netsh int tcp set global autotuninglevel=normal
netsh int tcp set global congestionprovider=ctcp
netsh interface tcp set global autotuning=restricted
netsh int tcp set global netdma=enabled
goto kapat

:2
netsh int ipv4 set glob defaultcurhoplimit=28
netsh int ipv6 set glob defaultcurhoplimit=255
goto kapat

:3
for /f "tokens=3*" %%i in ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\NetworkCards" /f "ServiceName" /s^|findstr /i /l "ServiceName"') do (
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%i" /v "TCPNoDelay" /d "1" /t REG_DWORD /f
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%i" /v "TcpAckFrequency" /d "1" /t REG_DWORD /f
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%i" /v "TcpDelAckTicks" /d "0" /t REG_DWORD /f
) 
goto kapat

:kapat
cls
echo.
echo.
echo.
echo [+] the process has been completed successfully
timeout 2 >nul
echo [+] the program is closing, good game!
timeout 2 >nul
