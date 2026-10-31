# Ink Meridian · lazygit

Colour theme for [lazygit](https://github.com/jesseduffield/lazygit), built on the Ink Meridian palette.

## Install

`lazygit` reads `~/.config/lazygit/config.yml` on startup. If you already have
one, merge the `gui.theme` block into it rather than replacing the whole file —
this scheme only sets colours and leaves your keybindings, commands and git
settings alone.

To try it without touching your config, point lazygit straight at this file:

```bash
lazygit --use-config-file "$PWD/lazygit/config.yml"
```

To make it permanent, copy it into place:

```bash
mkdir -p ~/.config/lazygit
cp lazygit/config.yml ~/.config/lazygit/config.yml
```

## Verify

```bash
lazygit --use-config-file "$PWD/lazygit/config.yml"
```

The border around the focused panel should render in the accent blue `#83A8F2`.

## Palette

| Role | Hex |
| --- | --- |
| Foreground | `#CCD6EA` |
| Active border | `#83A8F2` |
| Inactive border | `#26365A` |
| Selected line | `#25324E` |
| Unstaged changes | `#EC8B97` |
| Marked base commit | `#83A8F2` |
| Authors | `#A687E0` |
