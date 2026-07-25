function hatchable:debug/log {category:"checks",category_label:"Checks",level:"Trace",level_color:"gray",message:"Checking nearby entity density."}
$execute store result score #density_count hatchable.temp if entity @e[type=#hatchable:density_entities,distance=..$(density_range)]
execute store result score #density_limit hatchable.temp run data get storage hatchable:temp hatch_resolved.density_limit
execute if score #density_count hatchable.temp < #density_limit hatchable.temp run return run function hatchable:internal/check/chance
function hatchable:debug/log {category:"checks",category_label:"Checks",level:"Warning",level_color:"yellow",message:"Removed a mapped item because the density limit was reached."}
kill @s
