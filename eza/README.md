# Ink Meridian · eza

File-list colour theme for [eza](https://github.com/eza-community/eza), built on the Ink Meridian palette.

## Install

```bash
mkdir -p ~/.config/eza
cp eza/theme.yml ~/.config/eza/theme.yml
```

`eza` picks the file up automatically from `$XDG_CONFIG_HOME/eza/theme.yml`. To use it from another directory instead:

```bash
export EZA_CONFIG_DIR=/path/to/this/repo/eza
```

## Verify

```bash
EZA_CONFIG_DIR="$PWD/eza" eza -l --color=always
```

## Palette

| Role | Hex |
| --- | --- |
| Normal file | `#CCD6EA` |
| Directory | `#8DB0F2` |
| Executable | `#9DD4A7` |
| Symlink | `#87CEE2` |
| Modified | `#E9C78C` |
| Deleted | `#EC8B97` |
| New | `#9DD4A7` |
| Warning | `#D9B06E` |
