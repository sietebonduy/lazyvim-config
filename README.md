# Neovim config

Personal [LazyVim](https://www.lazyvim.org/) configuration for Ruby/Rails, TypeScript/React, Rust, Markdown,
JSON, TOML and Tailwind projects.

## Requirements

- Neovim 0.11.2 or newer, built with LuaJIT
- A Nerd Font
- Git, `ripgrep`, `fd`, `fzf` and `lazygit`
- A maintained Node.js version available in Neovim's `PATH` for TypeScript, ESLint, Tailwind and Markdown tools
- Ruby/Bundler and Rust toolchains when working with those languages
- Dash on macOS for offline documentation lookup

Check the executables visible to Neovim with `:checkhealth` and `:Mason`.

## Installation

Back up an existing Neovim configuration and data directory first, then clone this repository:

```sh
git clone git@github.com:sietebonduy/lazyvim-config.git ~/.config/nvim
nvim
```

Lazy.nvim installs plugins on the first start. Plugin revisions are recorded in `lazy-lock.json`.

## Included workflow

- `fzf-lua` is the primary picker.
- Grug Far provides project-wide search and replace on `<leader>sr`.
- Gitsigns and Diffview cover line blame, hunks and repository history.
- Ruby LSP, VTSLS, ESLint, Rustaceanvim and Tailwind provide language tooling.
- Neotest is enabled; the Ruby extra supplies the RSpec adapter.
- Moonfly, Noice, Lualine and Snacks share the same transparent floating-window styling.
- Spell checking uses English and Russian dictionaries in prose-oriented buffers.

Project commands should still run through each repository's own runtime and dependency manager. In particular, Neovim
must inherit the correct Node.js version; an old global Node can prevent modern language servers from starting.

## Keymaps

- [Custom keymaps](KEYMAPS.md) documents only mappings owned by this repository.
- [Runtime keymaps](KEYMAPS_RUNTIME.md) is generated from a fully loaded Neovim instance.
- LazyVim defaults are documented in the [LazyVim keymap reference](https://www.lazyvim.org/keymaps).

Regenerate the runtime snapshot after changing mappings or updating plugins:

```sh
./scripts/export-keymaps.sh
```

## Maintenance

Use `:Lazy update` to update plugins and review the resulting lock-file diff. Useful local checks:

```sh
stylua --check .
shellcheck scripts/export-keymaps.sh
git diff --check
nvim --headless -i NONE '+qa!'
```

GitHub Actions runs formatting plus headless startup checks against stable and nightly Neovim.
