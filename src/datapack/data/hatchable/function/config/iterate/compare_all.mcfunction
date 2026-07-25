# Keep the group active after the first non-default setting.
execute if score #resetActive hatchable.temp matches 1.. run return 0

scoreboard players set #settingDifferent hatchable.temp 0
$scoreboard players set #perPlayer hatchable.temp $(per_player)

# Per-player settings are non-default while their override tag is present.
$execute if score #perPlayer hatchable.temp matches 1 if entity @s[tag=$(player_tag)] run scoreboard players set #resetActive hatchable.temp 1
execute if score #resetActive hatchable.temp matches 1.. run return 0

# Compare stored settings against the canonical default snapshot.
# This also supports compound settings whose default is assembled from hidden child definitions.
execute if score #perPlayer hatchable.temp matches 0 run data remove storage hatchable:temp config_compare
$data modify storage hatchable:temp config_compare set from storage hatchable:config $(path)
$execute if score #perPlayer hatchable.temp matches 0 store success score #settingDifferent hatchable.temp run data modify storage hatchable:temp config_compare set from storage hatchable:defaults values.$(path)
execute if score #settingDifferent hatchable.temp matches 1.. run scoreboard players set #resetActive hatchable.temp 1
