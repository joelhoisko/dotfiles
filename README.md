# My dotfiles

😎 e🅱️ic 😎

## Wallpaper

cronjob for wallpaper changing:
```sh
*/10 * * * * DISPLAY=:0 /usr/bin/feh --randomize --bg-fill --auto-rotate ~/Dropbox/Wallsuffle/BigReso/*
```

## Mute

Mute knob is actually the `Pause` key, make a custom shortcut through settings GUI to trigger the `mute_microphone` script.

For the available icons for dunst check `/usr/share/icons`, might have to use the full path when sending them with `notify-send -i <icon-path>`

## Notifications

For notifications just install `dunst` and relog to get it working.

## Lockscreen wallpaper

To set lockscreen wallpaper, set any value Xresource `regolith.lockscreen.wallpaper.file`, then you can change it by just using the `lockscreen-wallpaper-change` script. It 😂 just 😂 🅱orks 😂.

## Gnome terminal profile

Set `gnome.terminal.update` Xresource to `false` and then your gnome terminal default theme can be changed.

