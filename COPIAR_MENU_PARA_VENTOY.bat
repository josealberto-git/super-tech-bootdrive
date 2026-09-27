@echo off
setlocal EnableExtensions
chcp 65001 >nul
title JOSE USB TOOLKIT - INSTALAR MENU NO VENTOY
color 0B

echo.
echo ================================================
echo       JOSE USB TOOLKIT - MENU DE BOOT 1.0
echo ================================================
echo.
echo ATENCAO: este script NAO FORMATA o pendrive.
echo Ele apenas copia o menu e cria a estrutura ISO.
echo O Ventoy precisa estar instalado antes.
echo.

set "DRIVE="
set /p "DRIVE=Digite a letra do pendrive Ventoy (ex.: E): "
set "DRIVE=%DRIVE::=%"
set "DRIVE=%DRIVE: =%"

if "%DRIVE%"=="" goto :fim
if not exist "%DRIVE%:\" (
  echo.
  echo Unidade nao encontrada: %DRIVE%:
  pause
  goto :fim
)

if not exist "%DRIVE%:\ventoy" mkdir "%DRIVE%:\ventoy"
if not exist "%DRIVE%:\ISO" mkdir "%DRIVE%:\ISO"

echo.
echo Copiando configuracao do Ventoy...
if exist "%~dp0ventoy\ventoy.json" copy /Y "%~dp0ventoy\ventoy.json" "%DRIVE%:\ventoy\ventoy.json" >nul
if exist "%~dp0ventoy\theme" xcopy "%~dp0ventoy\theme" "%DRIVE%:\ventoy\theme" /E /I /Y >nul

echo Criando categorias...
for %%D in (01_WINDOWS 02_LINUX 03_HIRENS_BOOTCD_PE 04_MEDICAT 05_WINPE 06_FERRAMENTAS_DISCO 07_BACKUP_RESTAURACAO 08_DIAGNOSTICO_HARDWARE 09_REDE_INTERNET 10_ANTIVIRUS_SEGURANCA 11_MINHAS_FERRAMENTAS) do if not exist "%DRIVE%:\ISO\%%D" mkdir "%DRIVE%:\ISO\%%D"

echo.
echo CONCLUIDO. Nenhum arquivo foi formatado ou apagado.
echo.
echo Agora coloque suas ISOs em:
echo %DRIVE%:\ISO\
echo.
echo Reinicie o PC e inicialize pelo pendrive.
echo O Ventoy continuara sendo o mecanismo de boot.
pause

:fim
endlocal
