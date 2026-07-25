$data modify storage hatchable:temp ui.render set from storage hatchable:temp $(source)
data modify storage hatchable:temp ui.render.reset set from storage hatchable:temp ui.reset
$function hatchable:config/ui/render/$(renderer) with storage hatchable:temp ui.render
