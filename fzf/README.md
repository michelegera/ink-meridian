# Ink Meridian · fzf

Colour scheme for [fzf](https://github.com/junegunn/fzf), built on the Ink Meridian palette.

## Install

```bash
mkdir -p ~/.config/fzf
cp fzf/fzf.conf ~/.config/fzf/fzf.conf
```

`fzf` loads `~/.config/fzf/fzf.conf` automatically. Alternatively point `FZF_DEFAULT_OPTS_FILE` at it:

```bash
export FZF_DEFAULT_OPTS_FILE="$PWD/fzf/fzf.conf"
```

## Verify

```bash
printf 'ink\n' | FZF_DEFAULT_OPTS_FILE="$PWD/fzf/fzf.conf" fzf --filter=ink
```

This loads the file and prints the matching line. Run `fzf` without `--filter`
to see the colours.

## Palette

| Role | Hex |
| --- | --- |
| Background | `#101623` |
| Text | `#CCD6EA` |
| Current line | `#26365A` |
| Match highlight | `#83A8F2` |
| Prompt | `#83A8F2` |
| Pointer | `#8DB0F2` |
| Marker | `#A687E0` |
| Spinner | `#67B7CF` |
| Info | `#58657F` |
