$scoreboard players set #perPlayer hatchable.temp $(per_player)
$execute if score #perPlayer hatchable.temp matches 0 run data modify storage hatchable:config $(path) set from storage hatchable:defaults values.$(path)
$execute if score #perPlayer hatchable.temp matches 1 run tag @s remove $(player_tag)
function hatchable:debug/log {category:"config",category_label:"Config",level:"Info",level_color:"aqua",message:"Reset a configuration value."}
$function $(return_function)
