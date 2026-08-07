# Custom keymaps

`<leader>` is `Space`; `<localleader>` is `\`.

This file lists mappings owned by this repository. LazyVim defaults are intentionally not copied here because they can
change between releases. See the [LazyVim keymap reference](https://www.lazyvim.org/keymaps) and the generated
[runtime snapshot](KEYMAPS_RUNTIME.md) for the complete active map.

## Files and navigation

| Mode | Key | Action | Source |
|---|---|---|---|
| Normal | `<leader>cp` | Copy the current project-relative path | `lua/config/keymaps.lua` |
| Normal | `<leader>fw` | Open `path[:line[:column]]` | `lua/config/keymaps.lua` |
| Normal, Visual, Operator | `w` | Spider forward motion | `lua/plugins/workflow.lua` |
| Normal, Visual, Operator | `e` | Spider end-of-word motion | `lua/plugins/workflow.lua` |
| Normal, Visual, Operator | `b` | Spider backward motion | `lua/plugins/workflow.lua` |

## Git

| Mode | Key | Action | Source |
|---|---|---|---|
| Normal | `<leader>gD` | Open Diffview | `lua/plugins/workflow.lua` |
| Normal | `<leader>gQ` | Close Diffview | `lua/plugins/workflow.lua` |
| Normal | `<leader>gH` | Current-file history | `lua/plugins/workflow.lua` |
| Normal | `<leader>gR` | Repository history | `lua/plugins/workflow.lua` |
| Normal | `q` | Close a Gitsigns blame window | `lua/config/autocmds.lua` |

Full line blame is available through LazyVim's `<leader>ghb`; `<leader>gB` remains the standard Git Browse mapping.

## Code and tools

| Mode | Key | Action | Source |
|---|---|---|---|
| Normal | `gl` | Open diagnostics for the current line after LSP attaches | `lua/config/autocmds.lua` |
| Normal | `<leader>K` | Open Dash for the word under the cursor | `lua/plugins/dash.lua` |
| Normal | `<leader>dK` | Open a Dash search | `lua/plugins/dash.lua` |
| Normal | `<leader>cS` | Case-aware substitute | `lua/plugins/workflow.lua` |
| Normal | `<leader>uH` | Toggle Hardtime | `lua/plugins/workflow.lua` |
| Normal | `<leader>uv` | Open Vim Be Good | `lua/plugins/workflow.lua` |

Project-wide search and replace uses LazyVim's Grug Far mapping on `<leader>sr`. Inlay hints use LazyVim's
`<leader>uh` toggle.
