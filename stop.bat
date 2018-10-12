@echo off
set nginxDir=C:\nginx-1.15.3\nginx-1.15.3
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
pause



