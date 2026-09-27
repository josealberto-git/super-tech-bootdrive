# Estrutura de pendrive canivete suíço técnico

Este documento explica a organização ideal para um pendrive de suporte técnico usando Ventoy.

## 1. Estrutura sugerida

```text
USB/
├── Recovery/
│   ├── MediCat.iso
│   ├── Hiren's Boot PE.iso
│   ├── Wires Boot.iso
│   └── WinPE_Recovery.iso
├── Linux/
│   ├── Ubuntu_Live.iso
│   ├── Mint_Live.iso
│   ├── Clonezilla.iso
│   └── GParted_Live.iso
├── Tools/
│   ├── MemTest86.iso
│   ├── HddScan.iso
│   └── CrystalDiskInfo.iso
├── Drivers/
│   ├── Intel/
│   ├── Realtek/
│   ├── Nvidia/
│   └── AMD/
├── Personal/
│   ├── MyTool.iso
│   ├── MyWinPE.iso
│   └── MyScripts/
├── ventoy.json
├── README.txt
└── BootLog.txt
```

## 2. Organização por categoria

A ideia é tornar o menu mais rápido e profissional.

### Recovery
- ferramentas de recuperação
- utilitários de diagnóstico
- boot de reparo

### Linux
- distribuições live
- clone de sistema
- particionamento

### Tools
- testes de RAM
- sensores de temperatura
- diagnósticos de disco

### Drivers
- drivers de rede
- chipset
- gráficos
- Intel/AMD/NVIDIA

### Personal
- arquivos que você adiciona
- utilitários próprios
- imagens e scripts

## 3. Como nomear os itens

Exemplo de nomenclatura profissional:

```text
01 - MediCat.iso
02 - Hiren's Boot PE.iso
03 - Wires Boot.iso
04 - WinPE Recovery.iso
05 - Ubuntu Live.iso
06 - Clonezilla.iso
07 - MemTest86.iso
08 - Meu Toolkit.iso
```

## 4. Como personalizar o visual

Você pode deixar o menu com aparência muito mais profissional usando:
- nomes curtos e objetivos
- categorias por pastas
- ordem lógica da ferramenta mais usada primeiro
- menu temático para diagnóstico, backup e instalação

O arquivo `ventoy.json` é a base da configuração.

## 5. Checklist de uso

- [ ] pendrive formata e backup feito
- [ ] Ventoy instalado
- [ ] pastas criadas
- [ ] ISOs copiadas
- [ ] nomes ajustados
- [ ] `ventoy.json` configurado
- [ ] teste de boot realizado
- [ ] pendrive salvo como backup em outro local

## 6. Dica prática

Se o objetivo for atendimento de campo, mantenha as ferramentas mais usadas no topo do menu:

1. MediCat
2. Hiren's Boot PE
3. Wires Boot
4. Windows PE
5. Clonezilla
6. MemTest86
7. Drivers
8. Personal

Isso economiza tempo e deixa o suporte muito mais ágil.

## 7. Conclusão

O pendrive multiboot funciona como um kit técnico portátil. Ele não precisa ser um sistema único; ele precisa ser rápido, organizado e fácil de manter.

O ideal é ter:
- boot robusto
- menu claro
- ferramentas úteis
- espaço para personalização

---

Este projeto foi pensado para servir como base funcional para um canivete suíço técnico.
