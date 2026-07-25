$data modify storage hatchable:temp ui.entry merge from storage hatchable:definitions translations.$(path)
data modify storage hatchable:temp ui.entry.help set value '{"text":""}'
execute unless data storage hatchable:temp ui.entry.help_color run data modify storage hatchable:temp ui.entry.help_color set value "light_purple"
execute if data storage hatchable:temp ui.entry.help_function run function hatchable:config/ui/prepare_help with storage hatchable:temp ui.entry
$function hatchable:config/ui/render/type/$(type) with storage hatchable:temp ui.entry
