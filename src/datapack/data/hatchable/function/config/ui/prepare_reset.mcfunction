data remove storage hatchable:temp config_compare
scoreboard players set #resetActive hatchable.temp 0
$scoreboard players set #perPlayer hatchable.temp $(per_player)
$execute if score #perPlayer hatchable.temp matches 0 run data modify storage hatchable:temp config_compare set from storage hatchable:config $(path)
$execute if score #perPlayer hatchable.temp matches 0 store success score #resetActive hatchable.temp run data modify storage hatchable:temp config_compare set from storage hatchable:defaults values.$(path)
$execute if score #perPlayer hatchable.temp matches 1 if entity @s[tag=$(player_tag)] run scoreboard players set #resetActive hatchable.temp 1
$execute if score #resetActive hatchable.temp matches 1.. run function hatchable:config/ui/reset/setting/active {path:"$(path)",return_function:"$(return_function)",per_player:$(per_player),player_tag:"$(player_tag)"}
$execute unless score #resetActive hatchable.temp matches 1.. run function hatchable:config/ui/reset/setting/inactive {path:"$(path)"}
