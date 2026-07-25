function hatchable:debug/log {category:"tracking",category_label:"Tracking",level:"Trace",level_color:"gray",message:"Checking a mapped item entity."}
execute store result score #age hatchable.temp run data get entity @s Age
execute store result score #minimum_age hatchable.temp run data get storage hatchable:temp hatch_resolved.minimum_item_age
execute if score #age hatchable.temp < #minimum_age hatchable.temp run return fail

data modify storage hatchable:macro density_range set from storage hatchable:temp hatch_resolved.density_range
function hatchable:internal/check/density with storage hatchable:macro
