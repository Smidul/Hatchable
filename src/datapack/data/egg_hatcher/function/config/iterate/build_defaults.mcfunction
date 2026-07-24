$scoreboard players set #perPlayer egg_hatcher.temp $(per_player)
$execute if score #perPlayer egg_hatcher.temp matches 0 run data modify storage egg_hatcher:defaults values.$(path) set from storage egg_hatcher:temp config_iterator.arguments.default
