$scoreboard players set #perPlayer hatchable.temp $(per_player)
$execute if score #perPlayer hatchable.temp matches 0 run data modify storage hatchable:config $(path) set from storage hatchable:temp config_iterator.arguments.default
$execute if score #perPlayer hatchable.temp matches 1 run tag @s remove $(player_tag)
