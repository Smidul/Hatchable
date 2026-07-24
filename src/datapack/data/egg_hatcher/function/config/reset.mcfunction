$scoreboard players set #perPlayer egg_hatcher.temp $(per_player)
$execute if score #perPlayer egg_hatcher.temp matches 0 run data modify storage egg_hatcher:config $(path) set from storage egg_hatcher:defaults values.$(path)
$execute if score #perPlayer egg_hatcher.temp matches 1 run tag @s remove $(player_tag)
function egg_hatcher:debug/log {category:"config",category_label:"Config",level:"Info",level_color:"aqua",message:"Reset a configuration value."}
$function $(return_function)
