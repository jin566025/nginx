@echo off
set nginxDir=C:\nginx-1.15.3
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
echo start nginx...
start nginx
ping -n 2 127.0.0.1>nuls	
tasklist /nh | find /i "nginx.exe"
if %errorlevel% equ 0 (
	echo ===============
	echo nginx�����ɹ�!
	echo ===============
) else (
	echo =========================================
	echo nginx����ʧ�ܣ������logs/error.log�ļ�!
	echo =========================================
)    
pause



