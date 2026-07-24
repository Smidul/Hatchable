$scoreboard players set #perPlayer egg_hatcher.temp $(per_player)
$execute if score #perPlayer egg_hatcher.temp matches 0 unless data storage egg_hatcher:config $(path) run data modify storage egg_hatcher:config $(path) set from storage egg_hatcher:temp config_iterator.arguments.default
$execute if score #perPlayer egg_hatcher.temp matches 0 if data storage egg_hatcher:temp old_defaults.$(path) run function egg_hatcher:config/iterate/migrate_compare {path:"$(path)"}
