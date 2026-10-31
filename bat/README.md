# Ink Meridian · bat

Syntax highlighting theme for [bat](https://github.com/sharkdp/bat), built on the Ink Meridian palette.

## Install

```bash
mkdir -p ~/.config/bat/themes
cp "bat/Ink Meridian.tmTheme" ~/.config/bat/themes/
bat cache --build
```

Then select it in `~/.config/bat/config`:

```toml
--theme="Ink Meridian"
```

## Verify

```bash
bat --list-themes | grep "Ink Meridian"
```

## Palette

| Role | Hex |
| --- | --- |
| Background | `#101623` |
| Foreground | `#CCD6EA` |
| Comments | `#58657F` |
| Strings | `#9DD4A7` |
| Keywords | `#BDA3EC` |
| Functions | `#8DB0F2` |
| Types | `#E9C78C` |
| Operators | `#87CEE2` |
| Added | `#9DD4A7` |
| Removed | `#EC8B97` |
