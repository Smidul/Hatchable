$scoreboard players set #perPlayer hatchable.temp $(per_player)
$execute if score #perPlayer hatchable.temp matches 0 run data modify storage hatchable:defaults values.$(path) set from storage hatchable:temp config_iterator.arguments.default
