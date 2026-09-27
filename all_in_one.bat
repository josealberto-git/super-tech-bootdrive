@echo off
chcp 65001 >nul
color 0A
cls

echo ============================================================
echo CANIVETE SUIÇO TECNICO - EXECUCAO RAPIDA
echo ============================================================
echo.
echo Este script cria a estrutura do pendrive, gera o arquivo
echo ventoy.json e abre as paginas oficiais para baixar as ISOs.
echo.
echo AVISO: ele NAO instala o Ventoy sozinho nem baixa as ISOs
necho automaticamente por razoes de licenca/seguranca e dependencia
necho do pendrive real.
echo.
pause

REM Criar estrutura
if not exist "Recovery" mkdir Recovery
if not exist "Linux" mkdir Linux
if not exist "Tools" mkdir Tools
if not exist "Drivers" mkdir Drivers
if not exist "Personal" mkdir Personal
if not exist "Scripts" mkdir Scripts
if not exist "Drivers\Intel" mkdir Drivers\Intel
if not exist "Drivers\Realtek" mkdir Drivers\Realtek
if not exist "Drivers\Nvidia" mkdir Drivers\Nvidia
if not exist "Drivers\AMD" mkdir Drivers\AMD

echo.
echo [OK] Estrutura criada com sucesso.

REM Criar arquivo ventoy.json
(
  echo {
  echo   "control": [
  echo     {
  echo       "VTOY_DEFAULT_MENU_MODE": "GUI"
  echo     }
  echo   ],
  echo   "theme": {
  echo     "file": "/ventoy/theme/theme.txt",
  echo     "gfxmode": "1920x1080"
  echo   },
  echo   "menu_class": [
  echo     {
  echo       "key": "01",
  echo       "name": "MediCat",
  echo       "path": "Recovery/MediCat.iso"
  echo     },
  echo     {
  echo       "key": "02",
  echo       "name": "Hiren's Boot PE",
  echo       "path": "Recovery/Hirens_Boot_PE.iso"
  echo     },
  echo     {
  echo       "key": "03",
  echo       "name": "Wires Boot",
  echo       "path": "Recovery/Wires_Boot.iso"
  echo     },
  echo     {
  echo       "key": "04",
  echo       "name": "Windows PE",
  echo       "path": "Recovery/WinPE_Recovery.iso"
  echo     },
  echo     {
  echo       "key": "05",
  echo       "name": "Ubuntu Live",
  echo       "path": "Linux/Ubuntu_Live.iso"
  echo     },
  echo     {
  echo       "key": "06",
  echo       "name": "Clonezilla",
  echo       "path": "Linux/Clonezilla.iso"
  echo     },
  echo     {
  echo       "key": "07",
  echo       "name": "MemTest86",
  echo       "path": "Tools/MemTest86.iso"
  echo     },
  echo     {
  echo       "key": "08",
  echo       "name": "Minhas Ferramentas",
  echo       "path": "Personal/"
  echo     }
  echo   ],
  echo   "auto_memdisk": true
  echo }
)> ventoy.json

echo [OK] Arquivo ventoy.json gerado.

REM Criar guia
(
  echo CANIVETE SUICO TECNICO - GUIA
a  echo ============================
  echo.
  echo 1. Instale o Ventoy no pendrive
  echo 2. Copie este projeto para o pendrive
  echo 3. Coloque as ISOs nas pastas:
  echo    Recovery, Linux, Tools, Personal
  echo 4. Reboot e escolha pelo menu do Ventoy
  echo 5. Adicione suas ferramentas pessoais em Personal/
  echo.
  echo Ferramentas oficiais para baixar:
  echo - Ventoy: https://www.ventoy.net/
  echo - MediCat: https://medicatusb.com/
  echo - Hiren's Boot: https://www.hirensbootcd.org/
  echo - Ubuntu: https://ubuntu.com/download/desktop
  echo - Clonezilla: https://clonezilla.org/
  echo - MemTest86: https://www.memtest.org/
)> README.txt

echo [OK] README.txt gerado.

REM Abrir paginas oficiais
start "" https://www.ventoy.net/
start "" https://medicatusb.com/
start "" https://www.hirensbootcd.org/
start "" https://ubuntu.com/download/desktop
start "" https://clonezilla.org/
start "" https://www.memtest.org/

cls
echo ============================================================
echo CANIVETE SUIÇO TECNICO - PRONTO PARA USAR
echo ============================================================
echo.
echo Passos finais:
echo 1. Instale o Ventoy no pendrive
echo 2. Copie as pastas e arquivos para o pendrive
echo 3. Baixe as ISOs e coloque em Recovery, Linux, Tools, Personal
echo 4. Reinicie o PC e boot pelo pendrive

echo.
echo Estrutura criada:
 echo Recovery/
 echo Linux/
 echo Tools/
 echo Drivers/
 echo Personal/
 echo Scripts/
 echo ventoy.json
 echo README.txt

echo.
echo ABRIRAM AS PAGINAS DOS DOWNLOADS DAS FERRAMENTAS.
echo.
echo Caso queira, pode fechar esta janela e começar a baixar as ISOs.
echo.
echo ============================================================
pause
