# CANIVETE SUÍÇO TÉCNICO - GUIA DE INSTALAÇÃO RÁPIDA

## O QUE VOCÊ PRECISA

1. **Pendrive 32GB+** (márca boa: SanDisk, Kingston, Corsair)
2. **Ventoy** (baixe em https://www.ventoy.net/)
3. **Este arquivo pronto**
4. **As ISOs das ferramentas**

---

## PASSO 1: INSTALAR O VENTOY (3 minutos)

1. Baixe o Ventoy no site oficial
2. Execute `Ventoy2Disk.exe`
3. Selecione o pendrive
4. Clique em **INSTALAR**
5. Aguarde terminar

**Pronto! O pendrive está pronto para receber ISOs.**

---

## PASSO 2: COPIAR ESTE ARQUIVO

1. Copie a pasta `super-tech-bootdrive` inteira para a raiz do pendrive
2. Ou crie uma estrutura assim manualmente:

```
Pendrive/
├── Recovery/
├── Linux/
├── Tools/
├── Drivers/
├── Personal/
├── ventoy.json
├── install.bat
└── README.txt
```

---

## PASSO 3: EXECUTAR install.bat (JÁ PRONTO)

**NÃO PRECISA FAZER NADA!**

O arquivo `install.bat` já vem pronto com tudo configurado.

---

## PASSO 4: ADICIONAR AS ISOs

Baixe as ISOs e coloque na pasta correta:

### **Recovery/** (recuperação)
- MediCat.iso
- Hirens_Boot_PE.iso
- Wires_Boot.iso
- WinPE_Recovery.iso

### **Linux/** (Linux live)
- Ubuntu_Live.iso
- Mint_Live.iso
- Clonezilla.iso
- GParted_Live.iso

### **Tools/** (testes e diagnóstico)
- MemTest86.iso
- HddScan.iso
- CrystalDiskInfo.iso

### **Drivers/** (drivers)
- Intel/
- Realtek/
- Nvidia/
- AMD/

### **Personal/** (suas ferramentas)
- Coloque aqui suas ISOs e utilitários

---

## PASSO 5: TESTAR O BOOT

1. Insira o pendrive no PC
2. Na BIOS, defina o pendrive como primeira opção de boot
3. Reinicie
4. Você verá o menu do Ventoy com todas as opções

---

## O QUE ESTÁ PRONTO

✅ Menu organizado por categoria  
✅ Nomes das ferramentas claros  
✅ Estrutura de pastas pronta  
✅ Arquivo ventoy.json configurado  
✅ Scripts prontos  
✅ Tudo em português  

---

## DICA RÁPIDA

**Se quiser adicionar sua própria ferramenta:**

1. Crie uma pasta nova em `Personal/`
2. Coloque a ISO ou arquivo lá
3. O Ventoy detecta automaticamente
4. Reinicie o pendrive
5. Pronto!

---

## LISTA DE FERRAMENTAS GRATUITAS

Baixe as ISOs aqui:

- **MediCat** → https://medicatusb.com/
- **Hirens Boot PE** → https://www.hirensbootcd.org/
- **Wires Boot** → (procure na comunidade de suporte técnico)
- **Clonezilla** → https://clonezilla.org/
- **GParted Live** → https://gparted.sourceforge.io/
- **Ubuntu Live** → https://ubuntu.com/download/desktop
- **MemTest86** → https://www.memtest.org/

---

## RESUMO DO FLUXO

1. Instalar Ventoy no pendrive ✓
2. Copiar as pastas (ou usar este arquivo) ✓
3. Adicionar as ISOs nas pastas ✓
4. Testar o boot ✓
5. Adicionar suas ferramentas conforme precisa ✓

**Pronto! Seu canivete suíço técnico está funcional.**

---

## NÃO PRECISA DE INSTALAÇÃO

NÃO precisa executar nenhum arquivo .bat complicado ou rodar scripts.

**SÓ precisa:**
1. Instalar o Ventoy
2. Copiar as ISOs nas pastas
3. Usar o pendrive

Tudo funciona automaticamente.

---

**Seu pendrive multiboot de suporte técnico está pronto para usar!**
