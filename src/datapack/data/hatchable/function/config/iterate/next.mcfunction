execute unless data storage hatchable:temp config_iterator.queue[0] run return 0
data modify storage hatchable:temp config_iterator.arguments set from storage hatchable:temp config_iterator.queue[0]
data remove storage hatchable:temp config_iterator.queue[0]
execute unless data storage hatchable:temp config_iterator.arguments.per_player run data modify storage hatchable:temp config_iterator.arguments.per_player set value 0
execute unless data storage hatchable:temp config_iterator.arguments.player_tag run data modify storage hatchable:temp config_iterator.arguments.player_tag set value "unused"
$execute if data storage hatchable:temp config_iterator.arguments.default run function hatchable:config/iterate/$(operation) with storage hatchable:temp config_iterator.arguments
function hatchable:config/iterate/next with storage hatchable:temp config_iterator
