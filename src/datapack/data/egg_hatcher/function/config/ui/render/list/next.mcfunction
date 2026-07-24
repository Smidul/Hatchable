execute unless data storage egg_hatcher:temp ui.context.queue[0] run return 0
data modify storage egg_hatcher:temp ui.entry set from storage egg_hatcher:temp ui.context.queue[0]
data remove storage egg_hatcher:temp ui.context.queue[0]
data modify storage egg_hatcher:temp ui.entry.return_function set from storage egg_hatcher:temp ui.context.return_function
execute unless data storage egg_hatcher:temp ui.entry.per_player run data modify storage egg_hatcher:temp ui.entry.per_player set value 0
execute unless data storage egg_hatcher:temp ui.entry.player_tag run data modify storage egg_hatcher:temp ui.entry.player_tag set value "unused"
execute if data storage egg_hatcher:temp ui.entry.heading run function egg_hatcher:config/ui/render/type/heading with storage egg_hatcher:temp ui.entry
function egg_hatcher:config/ui/render/list/setting with storage egg_hatcher:temp ui.entry
function egg_hatcher:config/ui/render/list/next
