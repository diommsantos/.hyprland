hl.on("window.active", function(w)
  if w.title:sub(1,4) == "nvim" then
    hl.dispatch(hl.dsp.exec_cmd("hyprctl switchxkblayout current 1"))
  elseif w.class ~= "org.gnome.Tecla" then
    hl.dispatch(hl.dsp.exec_cmd("hyprctl switchxkblayout current 0"))
  end 
end)
