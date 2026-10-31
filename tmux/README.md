# Ink Meridian · tmux

Colour scheme for [tmux](https://github.com/tmux/tmux), built on the Ink Meridian palette.

## Install

Add a single line to `~/.config/tmux/tmux.conf`:

```tmux
source-file /path/to/this/repo/tmux/tmux.conf
```

Then reload:

```bash
tmux source-file ~/.config/tmux/tmux.conf
```

## Verify

```bash
tmux show-options -g pane-colours
tmux show-options -g status-style
```

## Palette

| Role | Hex |
| --- | --- |
| Background | `#101623` |
| Foreground | `#CCD6EA` |
| Status bar | `#1A2233` |
| Active border | `#83A8F2` |
| Inactive border | `#26365A` |
| Current window | `#8DB0F2` |
| Activity | `#E9C78C` |
