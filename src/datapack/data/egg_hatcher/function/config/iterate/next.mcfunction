execute unless data storage egg_hatcher:temp config_iterator.queue[0] run return 0
data modify storage egg_hatcher:temp config_iterator.arguments set from storage egg_hatcher:temp config_iterator.queue[0]
data remove storage egg_hatcher:temp config_iterator.queue[0]
execute unless data storage egg_hatcher:temp config_iterator.arguments.per_player run data modify storage egg_hatcher:temp config_iterator.arguments.per_player set value 0
execute unless data storage egg_hatcher:temp config_iterator.arguments.player_tag run data modify storage egg_hatcher:temp config_iterator.arguments.player_tag set value "unused"
$execute if data storage egg_hatcher:temp config_iterator.arguments.default run function egg_hatcher:config/iterate/$(operation) with storage egg_hatcher:temp config_iterator.arguments
function egg_hatcher:config/iterate/next with storage egg_hatcher:temp config_iterator
