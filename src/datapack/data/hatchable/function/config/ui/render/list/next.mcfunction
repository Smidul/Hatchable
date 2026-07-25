execute unless data storage hatchable:temp ui.context.queue[0] run return 0
data modify storage hatchable:temp ui.entry set from storage hatchable:temp ui.context.queue[0]
data remove storage hatchable:temp ui.context.queue[0]
data modify storage hatchable:temp ui.entry.return_function set from storage hatchable:temp ui.context.return_function
execute unless data storage hatchable:temp ui.entry.per_player run data modify storage hatchable:temp ui.entry.per_player set value 0
execute unless data storage hatchable:temp ui.entry.player_tag run data modify storage hatchable:temp ui.entry.player_tag set value "unused"
execute if data storage hatchable:temp ui.entry.heading run function hatchable:config/ui/render/type/heading with storage hatchable:temp ui.entry
function hatchable:config/ui/render/list/setting with storage hatchable:temp ui.entry
function hatchable:config/ui/render/list/next
