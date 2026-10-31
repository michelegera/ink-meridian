# Ink Meridian · tuicr

Colour theme for [tuicr](https://github.com/agavra/tuicr), built on the Ink Meridian palette.

## Install

```bash
mkdir -p ~/.config/tuicr/themes
cp tuicr/ink-meridian.toml ~/.config/tuicr/themes/
cp tuicr/ink-meridian-syntax.tmTheme ~/.config/tuicr/themes/
```

Then select it in `~/.config/tuicr/config.toml`:

```toml
theme = "ink-meridian"
```

You can also pick a theme per run:

```bash
tuicr --theme ink-meridian
```

## Verify

```bash
tuicr --theme ink-meridian
```

## Palette

| Role | Hex |
| --- | --- |
| Panel | `#1A2233` |
| Foreground | `#CCD6EA` |
| Highlight | `#26365A` |
| Added | `#9DD4A7` |
| Removed | `#EC8B97` |
| Modified | `#E9C78C` |
| Renamed | `#8DB0F2` |
| Comment | `#83A8F2` |
| Cursor | `#83A8F2` |
