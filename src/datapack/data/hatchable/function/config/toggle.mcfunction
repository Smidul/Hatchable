$scoreboard players set #perPlayer hatchable.temp $(per_player)
$execute if score #perPlayer hatchable.temp matches 0 store result score #toggle hatchable.temp run data get storage hatchable:config $(config)
$execute if score #perPlayer hatchable.temp matches 0 if score #toggle hatchable.temp matches 0 run data modify storage hatchable:config $(config) set value 1b
$execute if score #perPlayer hatchable.temp matches 0 unless score #toggle hatchable.temp matches 0 run data modify storage hatchable:config $(config) set value 0b
$execute if score #perPlayer hatchable.temp matches 1 store success score #tagged hatchable.temp if entity @s[tag=$(player_tag)]
$execute if score #perPlayer hatchable.temp matches 1 if score #tagged hatchable.temp matches 1 run tag @s remove $(player_tag)
$execute if score #perPlayer hatchable.temp matches 1 if score #tagged hatchable.temp matches 0 run tag @s add $(player_tag)
$function $(return_function)
