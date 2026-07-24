data remove storage egg_hatcher:temp config_compare
scoreboard players set #resetActive egg_hatcher.temp 0
$scoreboard players set #perPlayer egg_hatcher.temp $(per_player)
$execute if score #perPlayer egg_hatcher.temp matches 0 run data modify storage egg_hatcher:temp config_compare set from storage egg_hatcher:config $(path)
$execute if score #perPlayer egg_hatcher.temp matches 0 store success score #resetActive egg_hatcher.temp run data modify storage egg_hatcher:temp config_compare set from storage egg_hatcher:defaults values.$(path)
$execute if score #perPlayer egg_hatcher.temp matches 1 if entity @s[tag=$(player_tag)] run scoreboard players set #resetActive egg_hatcher.temp 1
$execute if score #resetActive egg_hatcher.temp matches 1.. run function egg_hatcher:config/ui/reset/setting/active {path:"$(path)",return_function:"$(return_function)",per_player:$(per_player),player_tag:"$(player_tag)"}
execute unless score #resetActive egg_hatcher.temp matches 1.. run function egg_hatcher:config/ui/reset/setting/inactive
