function hatchable:debug/log {category:"checks",category_label:"Checks",level:"Trace",level_color:"gray",message:"Rolling the hatch chance."}
execute store result score #roll hatchable.temp run random value 1..100
execute store result score #chance hatchable.temp run data get storage hatchable:temp hatch_resolved.chance
execute if score #roll hatchable.temp <= #chance hatchable.temp run return run function hatchable:internal/prepare_hatch
function hatchable:debug/log {category:"checks",category_label:"Checks",level:"Info",level_color:"aqua",message:"The hatch chance failed."}
function hatchable:internal/remove_item
