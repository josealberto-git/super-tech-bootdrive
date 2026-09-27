# Canivete Suíço Técnico

Este repositório serve como base para montar um pendrive bootável profissional, com estrutura de multiboot usando Ventoy e organização para incluir ferramentas de diagnóstico, recuperação e manutenção.

O conceito aqui é bem prático:
- o pendrive vira um canivete suíço técnico
- o Ventoy funciona como carregador principal do menu de boot
- você pode incluir ISOs de MediCat, Hirens BootCD PE, Wires Boot, Linux Live, Windows PE, utilitários, drivers e suas próprias ferramentas
- o menu pode ser organizado e nomeado para ficar visualmente mais parecido com uma interface de suporte técnico

Importante:
- não existe um único "ISO mesclada" que unifique tudo em um único sistema; o cenário mais eficiente é um pendrive multiboot com o Ventoy e várias ISOs separadas
- isso torna o processo mais flexível, estável e fácil de atualizar

## Objetivo

Criar um pendrive bootável com:
- diagnóstico de hardware
- testes de memória
- recuperação de sistema
- backup/restore
- recolocação de partições
- boot de ferramentas de suporte
- fácil adição de ferramentas pessoais

## Estrutura recomendada no pendrive

Use a seguinte organização na raiz do pendrive:

```text
USB/
├── Ventoy/                     # se o Ventoy for instalado em uma partição separada
├── Windows/
│   ├── Win10_22H2.iso
│   ├── Win11.iso
├── Recovery/
│   ├── Hirens_Boot_PE.iso
│   ├── MediCat.iso
│   ├── Wires_Boot.iso
│   ├── WinPE_Recovery.iso
├── Linux/
│   ├── Ubuntu_Live.iso
│   ├── Clonezilla.iso
│   ├── GParted_Live.iso
├── Tools/
│   ├── MemTest86.iso
│   ├── HddScan.iso
│   ├── CrystalDiskInfo.iso
├── Drivers/
│   ├── LAN/
│   ├── WLAN/
│   ├── Chipset/
├── Personal/
│   ├── MyTool.iso
│   ├── MyWinPE.iso
│   ├── MyRecovery.img
├── Scripts/
│   ├── install.bat
│   ├── drivers_installer.ps1
├── ventoy.json                # personalização do menu
└── README.txt
```

## Como montar o pendrive

### 1) Preparar o pendrive
- Use um pendrive de 16 GB, 32 GB ou superior
- Faça backup de todos os dados existentes
- Recomendado: marca confiável e boa velocidade de leitura/gravação

### 2) Instalar o Ventoy
- Baixe o Ventoy no site oficial
- Execute o instalador no Windows ou Linux
- Selecione o pendrive e clique em Instalar

### 3) Copiar as ISOs para o pendrive
- Copie as imagens ISO para a raiz da unidade ou em pastas organizadas
- O Ventoy detecta automaticamente as opções de boot

### 4) Nomear as ferramentas para facilitar o menu
Exemplos de nomes úteis:
- `01 - MediCat.iso`
- `02 - Hiren's Boot PE.iso`
- `03 - Wires Boot.iso`
- `04 - Ubuntu Live.iso`
- `05 - Clonezilla.iso`
- `06 - MemTest86.iso`
- `07 - Minhas Ferramentas Pessoais.iso`

Isso deixa o menu muito mais limpo e profissional.

## Personalização do menu

O Ventoy permite customizar o menu. O arquivo `ventoy.json` é o ponto principal para ajustes.

Use este exemplo como base:

```json
{
  "control": [
    {
      "VTOY_DEFAULT_MENU_MODE": "GUI"
    }
  ],
  "theme": {
    "file": "/ventoy/theme/theme.txt",
    "gfxmode": "1920x1080"
  },
  "menu_class": [
    {
      "key": "01",
      "name": "MediCat",
      "path": "Recovery/MediCat.iso"
    },
    {
      "key": "02",
      "name": "Hiren's Boot PE",
      "path": "Recovery/Hirens_Boot_PE.iso"
    },
    {
      "key": "03",
      "name": "Wires Boot",
      "path": "Recovery/Wires_Boot.iso"
    },
    {
      "key": "04",
      "name": "Ubuntu Live",
      "path": "Linux/Ubuntu_Live.iso"
    },
    {
      "key": "05",
      "name": "Clonezilla",
      "path": "Linux/Clonezilla.iso"
    },
    {
      "key": "06",
      "name": "MemTest86",
      "path": "Tools/MemTest86.iso"
    },
    {
      "key": "07",
      "name": "Minhas Ferramentas",
      "path": "Personal/"
    }
  ],
  "auto_memdisk": true
}
```

Observação: a sintaxe exata pode variar um pouco conforme a versão do Ventoy. Use como exemplo de organização e conceito de customização.

## Visual "tipo Hiren / MediCat"

O visual mais parecido com Hiren's/MediCat é obtido principalmente por:
- nomes organizados no menu
- pastas separadas por categoria
- arquivos com nomenclatura clara
- uso de ícones / temas personalizados onde suportado pelo Ventoy
- seleção de imagens com aparência profissional

Você pode criar uma aparência muito boa com:
- pastas nomeadas por categoria
- menu em ordem lógica
- labels curtos e claros
- destaque para ferramentas críticas: diagnóstico, recuperação, backup, rede, drivers

## Ferramentas recomendadas para incluir

### Diagnóstico e recuperação
- Hiren's Boot PE
- MediCat
- Wires Boot
- WinPE Recovery
- GParted Live
- Clonezilla
- MemTest86

### Antivírus e remoção de malware
- Kaspersky Rescue Tool
- Bitdefender Rescue
- Avira Rescue

### Instalação e suporte
- Windows ISO
- Ubuntu Live
- Linux Mint Live
- Drivers de rede e chipset

### Ferramentas pessoais
- sua própria WinPE
- utilitários de diagnóstico
- scripts de instalação
- backups específicos

## Checklist de montagem

- [ ] pendrive de boa qualidade
- [ ] Ventoy instalado
- [ ] ISO do MediCat adicionada
- [ ] ISO do Hirens adicionada
- [ ] ISO do Wires Boot adicionada
- [ ] ferramentas de diagnóstico e rede adicionadas
- [ ] personal folder criado
- [ ] menu organizado por categoria
- [ ] testado em máquina real
- [ ] backup do pendrive salvo em outro local

## Dicas profissionais

- mantenha o pendrive atualizado com as ferramentas mais recentes
- teste o boot em pelo menos um desktop e um notebook
- se for usar em ambientes UEFI, mantenha opções compatíveis com Secure Boot e Legacy
- prefira nomes de arquivo muito claros para não perder tempo no atendimento
- as ferramentas mais usadas devem ficar no topo do menu

## Utilidade final

Esse modelo transforma o pendrive em um:
- kit de suporte técnico
- kit de manutenção de computadores
- kit de diagnóstico e recuperação
- kit de instalação e reparo

Tudo em um único dispositivo, pronto para uso em campo.

## Próximos passos

1. Instalar o Ventoy no pendrive
2. Copiar as ISOs
3. Organizar as pastas
4. Ajustar o `ventoy.json`
5. Testar o boot em uma máquina real
6. Adicionar suas ferramentas pessoais

Se quiser, este mesmo projeto pode ser expandido para uma versão mais visual, com:
- tema customizado
- menu segmentado por categoria
- README do pendrive em português
- instruções de backup em PDF
- pasta para drivers por fabricante
- scripts de automatização

---

Este projeto foi pensado como base para um canivete suíço técnico funcional e personalizável.

"Uma boa ferramenta de suporte não é a que tem mais software; é a que você consegue usar rápido quando a máquina falha."
