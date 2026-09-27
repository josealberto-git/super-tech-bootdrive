@echo off
chcp 65001 >nul
color 0B
cls

echo.
echo ============================================================
echo CANIVETE SUIÇO TECNICO - GERENCIADOR DO PENDRIVE
echo ============================================================
echo.
echo Bem-vindo ao seu canivete suíço técnico!
echo.
echo Escolha uma opção:
echo.
echo 1. Criar estrutura de pastas automaticamente
echo 2. Verificar se a estrutura está OK
echo 3. Adicionar uma ferramenta personalizada
echo 4. Ver guia de instalação
echo 5. Sair
echo.
set /p OPCAO="Digite sua opção (1-5): "

if "%OPCAO%"=="1" goto CRIAR_ESTRUTURA
if "%OPCAO%"=="2" goto VERIFICAR
if "%OPCAO%"=="3" goto ADICIONAR
if "%OPCAO%"=="4" goto GUIA
if "%OPCAO%"=="5" goto FIM

goto MENU

:CRIAR_ESTRUTURA
cls
echo.
echo Criando estrutura de pastas...
echo.
echo [INFO] Criando pastas principais...

if not exist "Recovery" (mkdir Recovery & echo [OK] Recovery criada) else echo [JA EXISTE] Recovery
if not exist "Linux" (mkdir Linux & echo [OK] Linux criada) else echo [JA EXISTE] Linux
if not exist "Tools" (mkdir Tools & echo [OK] Tools criada) else echo [JA EXISTE] Tools
if not exist "Drivers" (mkdir Drivers & echo [OK] Drivers criada) else echo [JA EXISTE] Drivers
if not exist "Personal" (mkdir Personal & echo [OK] Personal criada) else echo [JA EXISTE] Personal
if not exist "Scripts" (mkdir Scripts & echo [OK] Scripts criada) else echo [JA EXISTE] Scripts

echo.
echo [INFO] Criando sub-pastas em Drivers...

if not exist "Drivers\Intel" (mkdir Drivers\Intel & echo [OK] Intel criada) else echo [JA EXISTE] Intel
if not exist "Drivers\Realtek" (mkdir Drivers\Realtek & echo [OK] Realtek criada) else echo [JA EXISTE] Realtek
if not exist "Drivers\Nvidia" (mkdir Drivers\Nvidia & echo [OK] Nvidia criada) else echo [JA EXISTE] Nvidia
if not exist "Drivers\AMD" (mkdir Drivers\AMD & echo [OK] AMD criada) else echo [JA EXISTE] AMD

echo.
echo [SUCESSO] Estrutura criada!
echo.
echo Pressione qualquer tecla para voltar ao menu...
pause
goto MENU

:VERIFICAR
cls
echo.
echo Verificando estrutura...
echo.

set ERROS=0

if not exist "Recovery" (echo [ERRO] Recovery não encontrada! & set /a ERROS=ERROS+1) else echo [OK] Recovery
if not exist "Linux" (echo [ERRO] Linux não encontrada! & set /a ERROS=ERROS+1) else echo [OK] Linux
if not exist "Tools" (echo [ERRO] Tools não encontrada! & set /a ERROS=ERROS+1) else echo [OK] Tools
if not exist "Drivers" (echo [AVISO] Drivers não encontrada) else echo [OK] Drivers
if not exist "Personal" (echo [AVISO] Personal não encontrada) else echo [OK] Personal
if not exist "ventoy.json" (echo [AVISO] ventoy.json não encontrado) else echo [OK] ventoy.json

echo.
if %ERROS% equ 0 (
    echo [SUCESSO] Tudo OK! Seu pendrive está pronto.
) else (
    echo [ALERTA] Existem erros! Execute a opção 1 para corrigir.
)

echo.
echo Pressione qualquer tecla para voltar ao menu...
pause
goto MENU

:ADICIONAR
cls
echo.
echo Adicionar ferramenta personalizada
echo.
echo Coloque o arquivo ISO em uma destas pastas:
echo.
echo 1. Recovery
    echo 2. Linux
    echo 3. Tools
    echo 4. Personal
    echo.
set /p PASTA="Em qual pasta? (1-4): "

if "%PASTA%"=="1" set DESTINO=Recovery
if "%PASTA%"=="2" set DESTINO=Linux
if "%PASTA%"=="3" set DESTINO=Tools
if "%PASTA%"=="4" set DESTINO=Personal

echo.
echo Copie seu arquivo ISO para: %DESTINO%\
echo.
echo Após copiar, reinicie o pendrive e ele aparecerá no menu!
echo.
echo Pressione qualquer tecla para voltar ao menu...
pause
goto MENU

:GUIA
cls
echo.
echo ============================================================
echo GUIA RÁPIDO - CANIVETE SUIÇO TECNICO
echo ============================================================
echo.
echo PASSO 1: Instalar Ventoy
echo   1. Baixe em: https://www.ventoy.net/
echo   2. Execute Ventoy2Disk.exe
echo   3. Selecione o pendrive
echo   4. Clique em INSTALAR
echo.
echo PASSO 2: Criar estrutura de pastas
echo   1. Volte ao menu e escolha opção 1
echo   2. As pastas serão criadas automaticamente
echo.
echo PASSO 3: Adicionar ISOs
echo   1. Baixe as ISOs das ferramentas
echo   2. Copie para as pastas corretas
echo   3. Recovery: MediCat, Hirens, Wires
echo   4. Linux: Ubuntu, Clonezilla, GParted
echo   5. Tools: MemTest86, HddScan
echo.
echo PASSO 4: Testar
echo   1. Reinicie o PC
echo   2. Dé boot pelo pendrive
echo   3. Escolha uma opção no menu
echo.
echo ============================================================
echo Pressione qualquer tecla para voltar ao menu...
echo ============================================================
echo.
pause
goto MENU

:FIM
cls
echo.
echo Obrigado por usar o Canivete Suíço Técnico!
echo.
echo Seu pendrive multiboot está pronto para usar.
echo.
echo Até logo!
echo.
pause
exit /b

:MENU
goto :EOF
