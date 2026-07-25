$scoreboard players set #perPlayer hatchable.temp $(per_player)
$execute if score #perPlayer hatchable.temp matches 0 unless data storage hatchable:config $(path) run data modify storage hatchable:config $(path) set from storage hatchable:temp config_iterator.arguments.default
$execute if score #perPlayer hatchable.temp matches 0 if data storage hatchable:temp old_defaults.$(path) run function hatchable:config/iterate/migrate_compare {path:"$(path)"}
