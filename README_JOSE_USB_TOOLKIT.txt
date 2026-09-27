JOSÉ USB TOOLKIT - MENU PERSONALIZADO
======================================

Este pacote personaliza a organização de um pendrive que já possui o Ventoy instalado.
Ele não inclui ISOs e não altera a partição VTOYEFI.

Estrutura criada na partição grande do Ventoy:

ventoy/ventoy.json
ventoy/theme/jose/theme.txt
ISO/01_WINDOWS/
ISO/02_LINUX/
ISO/03_HIRENS_BOOTCD_PE/
ISO/04_MEDICAT/
ISO/05_WINPE/
ISO/06_FERRAMENTAS_DISCO/
ISO/07_BACKUP_RESTAURACAO/
ISO/08_DIAGNOSTICO_HARDWARE/
ISO/09_REDE_INTERNET/
ISO/10_ANTIVIRUS_SEGURANCA/
ISO/11_MINHAS_FERRAMENTAS/

COMO USAR
----------
1. Baixe o Ventoy somente do site oficial: https://www.ventoy.net/
2. Instale o Ventoy no pendrive. Essa etapa apaga o pendrive.
3. Depois que o Ventoy estiver instalado, abra a partição grande dele.
4. Extraia este pacote em uma pasta no computador.
5. Execute COPIAR_MENU_PARA_VENTOY.bat.
6. Digite somente a letra do pendrive, por exemplo E ou E:.
7. Copie as ISOs para a categoria correspondente.
8. Reinicie e selecione o pendrive no menu de boot do computador.

EXEMPLOS
--------
ISO/01_WINDOWS/Windows.iso
ISO/02_LINUX/Ubuntu.iso
ISO/06_FERRAMENTAS_DISCO/GParted.iso
ISO/11_MINHAS_FERRAMENTAS/MinhaFerramenta.iso

Para adicionar uma ferramenta, basta copiar a ISO para uma dessas pastas. Não é necessário reinstalar o Ventoy.

IMPORTANTE
----------
- O script não formata, não apaga e não instala o Ventoy.
- Confira cuidadosamente a letra da unidade antes de executar o script.
- Baixe imagens somente de fontes oficiais e use-as conforme suas licenças.
- MediCat, Hiren's BootCD PE e outras ferramentas são projetos separados; este pacote apenas organiza seus arquivos.
- O arquivo de tema é uma personalização visual básica. Se a sua versão do Ventoy não aceitar alguma opção, remova a configuração de tema e use o menu padrão.
