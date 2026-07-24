$scoreboard players set #perPlayer egg_hatcher.temp $(per_player)
$execute if score #perPlayer egg_hatcher.temp matches 0 store result score #toggle egg_hatcher.temp run data get storage egg_hatcher:config $(config)
$execute if score #perPlayer egg_hatcher.temp matches 0 if score #toggle egg_hatcher.temp matches 0 run data modify storage egg_hatcher:config $(config) set value 1b
$execute if score #perPlayer egg_hatcher.temp matches 0 unless score #toggle egg_hatcher.temp matches 0 run data modify storage egg_hatcher:config $(config) set value 0b
$execute if score #perPlayer egg_hatcher.temp matches 1 store success score #tagged egg_hatcher.temp if entity @s[tag=$(player_tag)]
$execute if score #perPlayer egg_hatcher.temp matches 1 if score #tagged egg_hatcher.temp matches 1 run tag @s remove $(player_tag)
$execute if score #perPlayer egg_hatcher.temp matches 1 if score #tagged egg_hatcher.temp matches 0 run tag @s add $(player_tag)
$function $(return_function)
