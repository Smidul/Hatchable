$data modify storage egg_hatcher:temp ui.render set from storage egg_hatcher:temp $(source)
data modify storage egg_hatcher:temp ui.render.reset set from storage egg_hatcher:temp ui.reset
$function egg_hatcher:config/ui/render/$(renderer) with storage egg_hatcher:temp ui.render
