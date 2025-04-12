# 🚀 nvim-portable

Neovim portátil e completo, com foco em Python, R e ciência de dados.  
Inspirado no VSCode, sem depender de instalação global.

> ✅ Plug & play — Rode em qualquer máquina Linux com `./run.sh`

---

## 📦 Funcionalidades

- 🐍 Python com `pyright`, `black`, `flake8`, `isort`
- 📊 R com `languageserver` e terminal embutido
- 🧠 Autocompletar com `nvim-cmp` e `LuaSnip`
- 🧩 Lazy.nvim como gerenciador de plugins
- 🧭 `telescope`, `which-key`, `toggleterm`, `lualine`, `nvim-tree`, etc.
- 🎨 Interface limpa com tema `onedark` + ícones
- 📦 Portável via AppImage + pasta `config/`

---

## 🚀 Como usar

1. **Clone o repositório:**

```bash
git clone https://github.com/hpalheta/nvim-portable.git
cd nvim-portable
```

2. **Baixe o Neovim AppImage:**

```bash
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod +x nvim.appimage
```

3. **Execute o Neovim portátil:**

```bash
./run.sh
```

---

## 🛠️ Plugins e configurações

O setup é modular com `lazy.nvim`. Configurações estão em:

```text
config/nvim/init.lua
config/nvim/lua/helber/
```

- `lsp.lua`: configurações do LSP (Python + R)
- `completion.lua`: autocompletar
- `terminal.lua`: terminal embutido
- `ui.lua`: interface visual (status bar, explorer, etc.)
- `plugins/`: lista de plugins usada com lazy

---

## 🧪 Dicas de uso

- Abrir terminal embutido: `Ctrl + \\`
- Buscar arquivos/buffers: `Ctrl + P`
- Executar blocos R: use `toggleterm` com R rodando no terminal
- Plugins: `:Lazy update` para atualizar, `:Lazy sync` para instalar

---

## 📚 Requisitos para R

Dentro do R:

```r
install.packages("languageserver")
```

---

## 📌 Créditos

Configuração personalizada por [@hpalheta](https://github.com/hpalheta), inspirada em setups de Neovim para Data Science e Dev.
