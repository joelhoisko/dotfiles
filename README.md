# My dotfiles

😎 e🅱️ic 😎

## New setup

cronjob for wallpaper changing:
```sh
*/10 * * * * DISPLAY=:0 /usr/bin/feh --randomize --bg-fill --auto-rotate ~/Dropbox/Wallsuffle/BigReso/*
```

Mute knob is actually the `Pause` key, make a custom shortcut through settings GUI to trigger the `mute_microphone` script.

For notifications just install `dunst` and relog to get it working.

