@echo off
set nginxDir=C:\nginx-1.15.3
cd /d %nginxDir%
if %errorlevel% neq 0 (
	echo =======================================================
	echo ERROR:请修改本批处理文件的nginxDir值为您自己的nginx目录
	echo =======================================================
	pause&exit
)
echo stop nginx...
REM nginx -s stop
taskkill /F /IM nginx.exe>nul
echo start nginx...
start nginx
ping -n 2 127.0.0.1>nuls	
tasklist /nh | find /i "nginx.exe"
if %errorlevel% equ 0 (
	echo ===============
	echo nginx启动成功!
	echo ===============
) else (
	echo =========================================
	echo nginx启动失败，详情见logs/error.log文件!
	echo =========================================
)    
pause



