# Ink Meridian · opencode

Colour theme for [opencode](https://opencode.ai), built on the Ink Meridian palette.

## Install

```bash
mkdir -p ~/.config/opencode/themes
cp opencode/ink-meridian.json ~/.config/opencode/themes/
```

Then select it. opencode reads the theme name from whichever of these config
files exists — check yours before editing:

`~/.config/opencode/cli.json` (opencode v2):

```json
{
  "$schema": "https://opencode.ai/v2/cli.json",
  "theme": {
    "name": "ink-meridian",
    "mode": "system"
  }
}
```

`mode` is optional: `system` follows the terminal's light/dark appearance,
`dark` or `light` lock one palette. The theme ships both.

`~/.config/opencode/tui.json`:

```json
{
  "$schema": "https://opencode.ai/tui.json",
  "theme": "ink-meridian"
}
```

If both files exist, `cli.json` wins and `tui.json` is ignored. You can also
switch themes at runtime with the `/theme` command inside opencode.

## Verify

Run opencode and open the theme picker — `ink-meridian` should be listed:

```bash
opencode
```

Then press `/theme` and look for `ink-meridian` in the list.

## Palette

| Role | Hex |
| --- | --- |
| Background | `#101623` |
| Foreground | `#CCD6EA` |
| Accent | `#83A8F2` |
| Success | `#9DD4A7` |
| Warning | `#E9C78C` |
| Error | `#EC8B97` |
| Info | `#87CEE2` |
| Diff added | `#9DD4A7` |
| Diff removed | `#EC8B97` |
