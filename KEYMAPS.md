## Neovim Keymaps

> `<leader>` в LazyVim по умолчанию = `Space`.

### Custom keymaps (твои)

| Mode | Key | Action | Notes | Source |
|---|---|---|---|---|
| `n` | `<leader>cp` | Copy project-relative file path | Копирует относительный путь текущего файла в `+` register | `lua/config/keymaps.lua` |
| `n` | `<leader>fw` | Open file:line | Открывает `path[:line[:col]]` через input prompt | `lua/config/keymaps.lua` |
| `n` | `<leader>t` | ToggleTerm float | Терминал во float | `lua/plugins/toggleterm.lua` |
| `n` | `<leader>th` | ToggleTerm horizontal | Горизонтальный терминал | `lua/plugins/toggleterm.lua` |
| `n` | `<leader>tv` | ToggleTerm vertical | Вертикальный терминал | `lua/plugins/toggleterm.lua` |
| `n` | `<leader>tt` | ToggleTerm tab | Терминал во вкладке | `lua/plugins/toggleterm.lua` |
| `n` | `<leader>gg` | LazyGit (float) | Открывает LazyGit во float-терминале | `lua/plugins/toggleterm.lua` |
| `t` | `<Esc>` | Exit terminal mode | Переход в normal mode из terminal | `lua/plugins/toggleterm.lua` |
| `t` | `<C-h>` | Terminal left | Навигация по окнам | `lua/plugins/toggleterm.lua` |
| `t` | `<C-j>` | Terminal down | Навигация по окнам | `lua/plugins/toggleterm.lua` |
| `t` | `<C-k>` | Terminal up | Навигация по окнам | `lua/plugins/toggleterm.lua` |
| `t` | `<C-l>` | Terminal right | Навигация по окнам | `lua/plugins/toggleterm.lua` |
| `n` | `<leader>gB` | Git Blame Line (Full) | Полный blame текущей строки | `lua/plugins/gitsigns.lua` |
| `n` | `<leader>sr` | Search & Replace (Spectre) | Открывает Spectre | `lua/plugins/spectre.lua` |
| `n` | `<leader>uh` | Toggle Inlay Hints | Buffer-local, только при LSP с `textDocument/inlayHint` | `lua/config/autocmds.lua` |
| `n` | `gl` | Line Diagnostics | Buffer-local при `LspAttach` | `lua/config/autocmds.lua` |
| `n` | `q` | Close blame window | Только для `FileType=gitsigns-blame` | `lua/config/autocmds.lua` |

### Extra (plugin option)

- `toggleterm` `open_mapping = <C-\\>`

---

### LazyVim default keymaps (core)

Source: `~/.local/share/nvim/lazy/LazyVim/lua/lazyvim/config/keymaps.lua`

| Mode | Key | Action | Notes |
|---|---|---|---|
| `n,x` | `j` | Down | wrapped-aware (`gj` when no count) |
| `n,x` | `<Down>` | Down | wrapped-aware |
| `n,x` | `k` | Up | wrapped-aware (`gk` when no count) |
| `n,x` | `<Up>` | Up | wrapped-aware |
| `n` | `<C-h>` | Go to Left Window | remap |
| `n` | `<C-j>` | Go to Lower Window | remap |
| `n` | `<C-k>` | Go to Upper Window | remap |
| `n` | `<C-l>` | Go to Right Window | remap |
| `n` | `<C-Up>` | Increase Window Height | |
| `n` | `<C-Down>` | Decrease Window Height | |
| `n` | `<C-Left>` | Decrease Window Width | |
| `n` | `<C-Right>` | Increase Window Width | |
| `n` | `<A-j>` | Move Down | line move |
| `n` | `<A-k>` | Move Up | line move |
| `i` | `<A-j>` | Move Down | line move |
| `i` | `<A-k>` | Move Up | line move |
| `v` | `<A-j>` | Move Down | selection move |
| `v` | `<A-k>` | Move Up | selection move |
| `n` | `<S-h>` | Prev Buffer | |
| `n` | `<S-l>` | Next Buffer | |
| `n` | `[b` | Prev Buffer | |
| `n` | `]b` | Next Buffer | |
| `n` | `<leader>bb` | Switch to Other Buffer | |
| `n` | `<leader>\`` | Switch to Other Buffer | |
| `n` | `<leader>bd` | Delete Buffer | |
| `n` | `<leader>bo` | Delete Other Buffers | |
| `n` | `<leader>bD` | Delete Buffer and Window | |
| `i,n,s` | `<Esc>` | Escape and Clear hlsearch | + stop snippet |
| `n` | `<leader>ur` | Redraw / Clear hlsearch / Diff Update | |
| `n,x,o` | `n` | Next Search Result | keeps direction sane |
| `n,x,o` | `N` | Prev Search Result | keeps direction sane |
| `i` | `,` | Undo breakpoint | inserts `,<c-g>u` |
| `i` | `.` | Undo breakpoint | inserts `.<c-g>u` |
| `i` | `;` | Undo breakpoint | inserts `;<c-g>u` |
| `i,x,n,s` | `<C-s>` | Save File | |
| `n` | `<leader>K` | Keywordprg | |
| `x` | `<` | Better indent left | keep selection |
| `x` | `>` | Better indent right | keep selection |
| `n` | `gco` | Add Comment Below | |
| `n` | `gcO` | Add Comment Above | |
| `n` | `<leader>l` | Lazy | |
| `n` | `<leader>fn` | New File | |
| `n` | `<leader>xl` | Location List | toggle |
| `n` | `<leader>xq` | Quickfix List | toggle |
| `n` | `[q` | Previous Quickfix | |
| `n` | `]q` | Next Quickfix | |
| `n,x` | `<leader>cf` | Format | |
| `n` | `<leader>cd` | Line Diagnostics | |
| `n` | `]d` | Next Diagnostic | |
| `n` | `[d` | Prev Diagnostic | |
| `n` | `]e` | Next Error | |
| `n` | `[e` | Prev Error | |
| `n` | `]w` | Next Warning | |
| `n` | `[w` | Prev Warning | |
| `n` | `<leader>uf` | Toggle Auto Format (buffer) | |
| `n` | `<leader>uF` | Toggle Auto Format (global) | |
| `n` | `<leader>us` | Toggle Spelling | |
| `n` | `<leader>uw` | Toggle Wrap | |
| `n` | `<leader>uL` | Toggle Relative Number | |
| `n` | `<leader>ud` | Toggle Diagnostics | |
| `n` | `<leader>ul` | Toggle Line Number | |
| `n` | `<leader>uc` | Toggle Conceal Level | |
| `n` | `<leader>uA` | Toggle Tabline | |
| `n` | `<leader>uT` | Toggle Treesitter | |
| `n` | `<leader>ub` | Toggle Dark Background | |
| `n` | `<leader>uD` | Toggle Dim | |
| `n` | `<leader>ua` | Toggle Animate | |
| `n` | `<leader>ug` | Toggle Indent Guides | |
| `n` | `<leader>uS` | Toggle Smooth Scroll | |
| `n` | `<leader>dpp` | Toggle Profiler | |
| `n` | `<leader>dph` | Toggle Profiler Highlights | |
| `n` | `<leader>uh` | Toggle Inlay Hints | только если `vim.lsp.inlay_hint` есть |
| `n` | `<leader>gg` | Lazygit (Root Dir) | только если `lazygit` в PATH |
| `n` | `<leader>gG` | Lazygit (cwd) | только если `lazygit` в PATH |
| `n` | `<leader>gL` | Git Log (cwd) | |
| `n` | `<leader>gb` | Git Blame Line | |
| `n` | `<leader>gf` | Git Current File History | |
| `n` | `<leader>gl` | Git Log (Root Dir) | |
| `n,x` | `<leader>gB` | Git Browse (open) | |
| `n,x` | `<leader>gY` | Git Browse (copy URL) | |
| `n` | `<leader>qq` | Quit All | |
| `n` | `<leader>ui` | Inspect Pos | |
| `n` | `<leader>uI` | Inspect Tree | |
| `n` | `<leader>L` | LazyVim Changelog | |
| `n` | `<leader>fT` | Terminal (cwd) | floating terminal |
| `n` | `<leader>ft` | Terminal (Root Dir) | floating terminal |
| `n,t` | `<C-/>` | Terminal (Root Dir) | |
| `n,t` | `<C-_>` | which_key_ignore | alias to terminal |
| `n` | `<leader>-` | Split Window Below | remap |
| `n` | `<leader>|` | Split Window Right | remap |
| `n` | `<leader>wd` | Delete Window | remap |
| `n` | `<leader>wm` | Toggle Window Zoom | |
| `n` | `<leader>uZ` | Toggle Window Zoom | alias |
| `n` | `<leader>uz` | Toggle Zen Mode | |
| `n` | `<leader><tab>l` | Last Tab | |
| `n` | `<leader><tab>o` | Close Other Tabs | |
| `n` | `<leader><tab>f` | First Tab | |
| `n` | `<leader><tab><tab>` | New Tab | |
| `n` | `<leader><tab>]` | Next Tab | |
| `n` | `<leader><tab>d` | Close Tab | |
| `n` | `<leader><tab>[` | Previous Tab | |
| `n,x` | `<localleader>r` | Run Lua | only `ft=lua` |

### LazyVim default keymaps (LSP + Mason)

Source: `~/.local/share/nvim/lazy/LazyVim/lua/lazyvim/plugins/lsp/init.lua`

| Mode | Key | Action | Notes |
|---|---|---|---|
| `n` | `<leader>cl` | Lsp Info | |
| `n` | `gd` | Goto Definition | LSP capability-dependent |
| `n` | `gr` | References | |
| `n` | `gI` | Goto Implementation | |
| `n` | `gy` | Goto Type Definition | |
| `n` | `gD` | Goto Declaration | |
| `n` | `K` | Hover | |
| `n` | `gK` | Signature Help | if server supports |
| `i` | `<C-k>` | Signature Help | if server supports |
| `n,x` | `<leader>ca` | Code Action | if server supports |
| `n,x` | `<leader>cc` | Run Codelens | if server supports |
| `n` | `<leader>cC` | Refresh & Display Codelens | if server supports |
| `n` | `<leader>cR` | Rename File | if server supports file rename methods |
| `n` | `<leader>cr` | Rename Symbol | if server supports |
| `n` | `<leader>cA` | Source Action | if server supports |
| `n` | `]]` | Next Reference | only when document highlight active |
| `n` | `[[` | Prev Reference | only when document highlight active |
| `n` | `<A-n>` | Next Reference | only when document highlight active |
| `n` | `<A-p>` | Prev Reference | only when document highlight active |
| `n` | `<leader>cm` | Mason | from `mason.nvim` spec |

---

### Notes about conflicts in твоём конфиге

- Ты переопределяешь/дополняешь некоторые дефолты LazyVim:
  - `<leader>gg` (у тебя LazyGit float через ToggleTerm, в LazyVim дефолте - Snacks.lazygit)
  - `<leader>gB` (у тебя full blame line, в LazyVim дефолте - git browse)
  - `<leader>uh` (у тебя буферный toggle inlay hints через `LspAttach`, в LazyVim есть глобальный toggle)
