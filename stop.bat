@echo off
set nginxDir=C:\nginx-1.15.3\nginx-1.15.3
cd /d %nginxDir%
if %errorlevel% neq 0 (
	echo =======================================================
	echo ERROR:���޸ı��������ļ���nginxDirֵΪ���Լ���nginxĿ¼
	echo =======================================================
	pause&exit
)
echo stop nginx...
REM nginx -s stop
taskkill /F /IM nginx.exe>nul
pause



