# Ink Meridian · neovim

Colour scheme for [Neovim](https://neovim.io), built on the Ink Meridian palette.
Ships the dark variant only.

## Install

```bash
mkdir -p ~/.config/nvim/colors
cp neovim/colors/ink-meridian.lua ~/.config/nvim/colors/
```

Then activate it from `~/.config/nvim/init.lua`:

```lua
vim.cmd.colorscheme("ink-meridian")
```

If you manage plugins with lazy.nvim, point it at this directory instead:

```lua
{
  "ink-meridian",
  dir = "/path/to/ink-meridian/neovim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("ink-meridian")
  end,
}
```

On LazyVim, set the colourscheme in your config:

```lua
{ "LazyVim/LazyVim", opts = { colorscheme = "ink-meridian" } }
```

LazyVim only selects the colourscheme; it does not add files to the runtime
path. Use the lazy.nvim spec above, or copy the file into
`~/.config/nvim/colors/`, which Neovim already puts on the runtime path.

## Verify

```bash
nvim --headless --clean \
  -c "set rtp+=~/.config/nvim" \
  -c "colorscheme ink-meridian" \
  -c "lua local h = vim.api.nvim_get_hl(0, { name = 'Comment' }); print(('Comment fg #%06X italic %s'):format(h.fg, tostring(h.italic)))" \
  -c "lua local h = vim.api.nvim_get_hl(0, { name = 'Normal' }); print(('Normal fg #%06X bg #%06X'):format(h.fg, h.bg))" \
  -c "lua print('terminal_color_4 ' .. vim.g.terminal_color_4)" \
  -c "qa"
```

Expected output:

```
Comment fg #58657F italic true
Normal fg #CCD6EA bg #101623
terminal_color_4 #6F96E8
```

For a visual check, open Neovim and run `:colorscheme ink-meridian`.

## Palette

| Role | Hex |
| --- | --- |
| Background | `#101623` |
| Foreground | `#CCD6EA` |
| Cursor | `#83A8F2` |
| Selection | `#26365A` |
| Active line | `#1A2233` |
| Accent | `#83A8F2` |
| Border | `#26365A` |
| Comment | `#58657F` |
| String | `#9DD4A7` |
| Keyword | `#BDA3EC` |
| Function | `#8DB0F2` |
| Type | `#87CEE2` |
| Operator | `#87CEE2` |
| Property | `#83A8F2` |
| Variable | `#CCD6EA` |
| Number | `#E9C78C` |
| Tag | `#BDA3EC` |
| Namespace | `#AAB8D0` |
| Diff added | `#9DD4A7` |
| Diff removed | `#EC8B97` |
| Diff changed (background) | `#25324E` |

Dark only, no light variant. Every value is drawn verbatim from the root
palette, with the sole exception of the six derived tints documented in the
root README, which this port uses for diff, diagnostic and search backgrounds.
