scoreboard players set #spawned hatchable.temp 0
$execute store success score #spawned hatchable.temp run summon $(entity) ~ ~ ~ $(data)
execute unless score #spawned hatchable.temp matches 1 run function hatchable:debug/log {category:"hatching",category_label:"Hatching",level:"Warning",level_color:"yellow",message:"The configured entity or data was invalid, so the item was left unchanged."}
execute unless score #spawned hatchable.temp matches 1 run return fail

execute if data storage hatchable:config {feedback:{hatch:{particles:1b}}} run particle minecraft:egg_crack ~ ~ ~ 0.25 0.25 0.25 1 15
$execute if data storage hatchable:config {feedback:{hatch:{sound:{enabled:1b}}}} run playsound $(sound_id) $(sound_category) @a ~ ~ ~ $(sound_volume) $(sound_pitch)
function hatchable:debug/log {category:"hatching",category_label:"Hatching",level:"Info",level_color:"green",message:"Hatched a configured entity."}
function hatchable:internal/remove_item
