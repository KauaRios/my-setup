# my-setup

Configurações (dotfiles) do meu ambiente Arch Linux, com tema inspirado em **2B · YoRHa No.2 Type B · NieR:Automata** — paleta de preto profundo, branco-osso e bronze-dourado.

## Conteúdo

```
my-setup/
├── install.sh                 # script de instalação
├── fastfetch/
│   ├── config.jsonc           # config do fastfetch (logo + módulos)
│   └── assets/pngegg.png      # logo 2B exibida no fastfetch
└── kitty/
    └── kitty.conf             # config do kitty (paleta 2B inline)
```

## Instalação

No Arch (ou distro com `pacman`):

```bash
bash install.sh
```

O script:
1. Instala os pacotes `starship`, `kitty` e `fastfetch` via `sudo pacman -S --needed`.
2. Remove as instalações anteriores em `~/.config/fastfetch` e `~/.config/kitty`.
3. Copia as pastas `fastfetch/` e `kitty/` para `~/.config/`.

> **Nota:** o bloco de integração com KDE (`kwriteconfig6` / `qdbus6`) está comentado no script, então por padrão o kitty **não** é definido como terminal padrão nem recebe atalho `Meta+T`. Descomente esse trecho se quiser ativar.

## Pré-requisitos

- **Arch Linux** (usa `pacman` para instalar os pacotes).
- **JetBrainsMono Nerd Font** instalada — necessária para o kitty (fontes definidas em `kitty.conf`).

## Customização

### kitty

- `kitty/kitty.conf` — configuração do kitty: fonte, cursor, janela, keybindings e a paleta de cores 2B definida inline.

### Paleta 2B

| Cor | Uso | Hex |
|-----|-----|-----|
| Preto profundo | fundo / vestido | `#0a0a0b` |
| Branco-osso | texto / cabelo | `#f0ece4` |
| Bronze-dourado | destaques / fivelas | `#c9a876` |
| Dourado claro | brilho metálico | `#e0c08f` |
| Cinza-aço | lâmina da espada | `#5a6270` |
| Vermelho vinho | venda dos olhos | `#6b2323` |

### fastfetch

- `fastfetch/config.jsonc` — logo, módulos de sistema/hardware e cores. Para trocar o logo, edite o campo `source` em `logo`.