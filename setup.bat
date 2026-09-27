@echo off
chcp 65001 >nul
color 0E
cls

echo.
echo ============================================================
echo CANIVETE SUIÇO TECNICO - CRIADOR DE ESTRUTURA
echo ============================================================
echo.
echo Este script vai criar a estrutura de pastas automaticamente.
echo.
pause

echo.
echo [INFO] Criando estrutura de pastas...
echo.

REM Criar pastas principais
if not exist "Recovery" mkdir Recovery && echo [OK] Pasta 'Recovery' criada
if not exist "Linux" mkdir Linux && echo [OK] Pasta 'Linux' criada
if not exist "Tools" mkdir Tools && echo [OK] Pasta 'Tools' criada
if not exist "Drivers" mkdir Drivers && echo [OK] Pasta 'Drivers' criada
if not exist "Personal" mkdir Personal && echo [OK] Pasta 'Personal' criada

echo.
echo [INFO] Criando sub-pastas em 'Drivers'...
echo.

REM Criar sub-pastas em Drivers
if not exist "Drivers\Intel" mkdir Drivers\Intel && echo [OK] Pasta 'Drivers\Intel' criada
if not exist "Drivers\Realtek" mkdir Drivers\Realtek && echo [OK] Pasta 'Drivers\Realtek' criada
if not exist "Drivers\Nvidia" mkdir Drivers\Nvidia && echo [OK] Pasta 'Drivers\Nvidia' criada
if not exist "Drivers\AMD" mkdir Drivers\AMD && echo [OK] Pasta 'Drivers\AMD' criada

echo.
echo [INFO] Criando pasta para Scripts...
echo.

if not exist "Scripts" mkdir Scripts && echo [OK] Pasta 'Scripts' criada

echo.
echo ============================================================
echo ESTRUTURA CRIADA COM SUCESSO!
echo ============================================================
echo.
echo Pastas criadas:
echo.
echo .
echo ├── Recovery\       (Ferramentas de recuperação: MediCat, Hirens, Wires)
echo ├── Linux\          (Linux Live, Clonezilla, GParted)
echo ├── Tools\          (MemTest86, HddScan, Testes)
echo ├── Drivers\        (Intel, Realtek, Nvidia, AMD)
echo ├── Personal\       (Suas ferramentas pessoais)
echo ├── Scripts\        (Scripts e automações)
echo └── ventoy.json     (Configuração do menu)
echo.
echo ============================================================
echo AGORA VOCÊ PRECISA:
echo ============================================================
echo.
echo 1. Copiar as ISOs para as pastas corretas:
echo.
echo    Recovery/
    echo    - MediCat.iso
    echo    - Hirens_Boot_PE.iso
    echo    - Wires_Boot.iso
    echo    - WinPE_Recovery.iso
echo.
echo    Linux/
    echo    - Ubuntu_Live.iso
    echo    - Mint_Live.iso
    echo    - Clonezilla.iso
    echo    - GParted_Live.iso
echo.
echo    Tools/
    echo    - MemTest86.iso
    echo    - HddScan.iso
    echo    - CrystalDiskInfo.iso
echo.
echo 2. Adicionar drivers em Drivers\ conforme precisar
echo.
echo 3. Adicionar suas ferramentas em Personal\
echo.
echo 4. Copiar o arquivo 'ventoy.json' para a raiz do pendrive
echo.
echo 5. Reiniciar o PC e dar boot pelo pendrive
echo.
echo ============================================================
echo Pressione qualquer tecla para sair...
echo ============================================================
echo.
pause
