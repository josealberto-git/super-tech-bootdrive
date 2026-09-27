@echo off
chcp 65001 >nul
color 0A
cls

echo.
echo ============================================================
echo CANIVETE SUIÇO TECNICO - VERIFICACAO DE ESTRUTURA
echo ============================================================
echo.

REM Cores e variáveis
set ERRO=0
set AVISOS=0

echo [INFO] Verificando estrutura de pastas...
echo.

REM Verifica se as pastas existem
if not exist "Recovery" (
    echo [ERRO] Pasta 'Recovery' não encontrada!
    set /a ERRO=ERRO+1
) else (
    echo [OK] Pasta 'Recovery' encontrada
)

if not exist "Linux" (
    echo [ERRO] Pasta 'Linux' não encontrada!
    set /a ERRO=ERRO+1
) else (
    echo [OK] Pasta 'Linux' encontrada
)

if not exist "Tools" (
    echo [ERRO] Pasta 'Tools' não encontrada!
    set /a ERRO=ERRO+1
) else (
    echo [OK] Pasta 'Tools' encontrada
)

if not exist "Drivers" (
    echo [AVISO] Pasta 'Drivers' não encontrada!
    set /a AVISOS=AVISOS+1
) else (
    echo [OK] Pasta 'Drivers' encontrada
)

if not exist "Personal" (
    echo [AVISO] Pasta 'Personal' não encontrada!
    set /a AVISOS=AVISOS+1
) else (
    echo [OK] Pasta 'Personal' encontrada
)

echo.
echo [INFO] Verificando arquivos de configuração...
echo.

if not exist "ventoy.json" (
    echo [AVISO] Arquivo 'ventoy.json' não encontrado!
    set /a AVISOS=AVISOS+1
) else (
    echo [OK] Arquivo 'ventoy.json' encontrado
)

echo.
echo ============================================================
echo RESUMO DA VERIFICACAO
echo ============================================================
echo.
echo Erros encontrados: %ERRO%
echo Avisos: %AVISOS%
echo.

if %ERRO% equ 0 (
    echo [SUCESSO] Estrutura OK! Seu pendrive está pronto.
    echo.
    echo Próximos passos:
    echo 1. Adicione as ISOs nas pastas corretas
    echo 2. Copie o ventoy.json para a raiz do pendrive
    echo 3. Reinicie o computador e dé boot pelo pendrive
    echo 4. Escolha uma opção no menu do Ventoy
    echo.
) else (
    echo [ERRO] Problema encontrado! Crie as pastas faltantes.
    echo.
    echo Crie as seguintes pastas na raiz do pendrive:
    echo - Recovery
    echo - Linux
    echo - Tools
    echo - Personal (opcional)
    echo - Drivers (opcional)
    echo.
)

echo ============================================================
echo Pressione qualquer tecla para sair...
echo ============================================================
echo.
pause
