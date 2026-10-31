# Ink Meridian · ghostty

Terminal colour scheme for [ghostty](https://ghostty.org), built on the Ink Meridian palette.

## Install

```bash
mkdir -p ~/.config/ghostty
cp ghostty/config ~/.config/ghostty/config
```

Reload ghostty (`Cmd+Shift+,` by default) to apply.

## Verify

```bash
ghostty +show-config | grep -E "palette = (0|4|15)="
```

## Palette

| Role | Hex |
| --- | --- |
| Background | `#101623` |
| Foreground | `#CCD6EA` |
| Cursor | `#83A8F2` |
| Selection | `#26365A` |
| Selected text | `#E6ECF7` |
| Black / bright black | `#1A2233` / `#58657F` |
| Red / bright red | `#DE6E7C` / `#EC8B97` |
| Green / bright green | `#7CBF8E` / `#9DD4A7` |
| Yellow / bright yellow | `#D9B06E` / `#E9C78C` |
| Blue / bright blue | `#6F96E8` / `#8DB0F2` |
| Magenta / bright magenta | `#A687E0` / `#BDA3EC` |
| Cyan / bright cyan | `#67B7CF` / `#87CEE2` |
| White / bright white | `#AAB8D0` / `#E6ECF7` |
