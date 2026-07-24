# Keep the group active after the first non-default setting.
execute if score #resetActive egg_hatcher.temp matches 1.. run return 0

scoreboard players set #settingDifferent egg_hatcher.temp 0
$scoreboard players set #perPlayer egg_hatcher.temp $(per_player)

# Per-player settings are non-default while their override tag is present.
$execute if score #perPlayer egg_hatcher.temp matches 1 if entity @s[tag=$(player_tag)] run scoreboard players set #resetActive egg_hatcher.temp 1
execute if score #resetActive egg_hatcher.temp matches 1.. run return 0

# Compare stored settings against the canonical default snapshot.
# This also supports compound settings whose default is assembled from hidden child definitions.
execute if score #perPlayer egg_hatcher.temp matches 0 run data remove storage egg_hatcher:temp config_compare
$data modify storage egg_hatcher:temp config_compare set from storage egg_hatcher:config $(path)
$execute if score #perPlayer egg_hatcher.temp matches 0 store success score #settingDifferent egg_hatcher.temp run data modify storage egg_hatcher:temp config_compare set from storage egg_hatcher:defaults values.$(path)
execute if score #settingDifferent egg_hatcher.temp matches 1.. run scoreboard players set #resetActive egg_hatcher.temp 1
