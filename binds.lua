for i = 1, 10 do
  local key = i % 10
  hl.bind("SUPER + " .. key, hl.dsp.focus({workspace = i}))
  hl.bind("SUPER + SHIFT + " .. key, hl.dsp.window.move({workspace = i}))
end

hl.bind("SUPER + CTRL + H", function()
  if hl.get_active_workspace().id == 1 then
    return
  end
  hl.dispatch(hl.dsp.focus({workspace = '-1'}))
end)

hl.bind("SUPER + CTRL + L", function()
  if hl.get_active_workspace().id >= 10 then
    return
  end
  hl.dispatch(hl.dsp.focus({workspace = '+1'}))
end)

hl.bind("SUPER + SHIFT + H", function()
  if hl.get_active_workspace().id == 1 then
    return
  end
  hl.dispatch(hl.dsp.window.move({workspace = '-1'}))
end)

hl.bind("SUPER + SHIFT + L", function()
  if hl.get_active_workspace().id >= 10 then
    return
  end
  hl.dispatch(hl.dsp.window.move({workspace = '+1'}))
end)

hl.bind("SUPER + H", hl.dsp.focus({direction = "l"}))
hl.bind("SUPER + L", hl.dsp.focus({direction = "r"}))
hl.bind("SUPER + J", hl.dsp.focus({direction = "d"}))
hl.bind("SUPER + K", hl.dsp.focus({direction = "u"}))

hl.bind("SUPER + F11", hl.dsp.window.fullscreen_state({internal = 2, client = -1, action = "toggle"}))
hl.bind("SUPER + F", hl.dsp.window.float({ action = "toggle" }))

hl.bind("SUPER + SPACE", hl.dsp.exec_cmd("vicinae toggle"))
hl.bind("SUPER + T", hl.dsp.exec_cmd("kitty"))
hl.bind("SUPER + B", hl.dsp.exec_cmd("zen-browser"))
hl.bind("SUPER + P", hl.dsp.exec_cmd("kitty --hold nvim -S ~/projects/Session.vim"))

hl.bind("SUPER + Q", hl.dsp.window.close())

hl.bind("SUPER + LEFT", hl.dsp.window.resize({x = -1, y = 0, relative = true}), {repeating = true})
hl.bind("SUPER + RIGHT", hl.dsp.window.resize({x = 1, y = 0, relative = true}), {repeating = true})
hl.bind("SUPER + DOWN", hl.dsp.window.resize({x = 0, y = -1, relative = true}), {repeating = true})
hl.bind("SUPER + UP", hl.dsp.window.resize({x = 0, y = 1, relative = true}), {repeating = true})

hl.bind("SUPER + CTRL + LEFT", hl.dsp.window.move({direction = "l"}))
hl.bind("SUPER + CTRL + RIGHT", hl.dsp.window.move({direction = "r"}))
hl.bind("SUPER + CTRL + DOWN", hl.dsp.window.move({direction = "d"}))
hl.bind("SUPER + CTRL + UP", hl.dsp.window.move({direction = "u"}))

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),      { locked = true, repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),     { locked = true, repeating = true })
hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),   { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp",  hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),                  { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown",hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),                  { locked = true, repeating = true })
hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })
