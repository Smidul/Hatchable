function egg_hatcher:debug/log {category:"checks",category_label:"Checks",level:"Trace",level_color:"gray",message:"Rolling the hatch chance."}
execute store result score #roll egg_hatcher.temp run random value 1..100
execute store result score #chance egg_hatcher.temp run data get storage egg_hatcher:config chance
execute if score #roll egg_hatcher.temp <= #chance egg_hatcher.temp run return run function egg_hatcher:internal/resolve_variant with storage egg_hatcher:macro
function egg_hatcher:debug/log {category:"checks",category_label:"Checks",level:"Info",level_color:"aqua",message:"The hatch chance failed."}
function egg_hatcher:internal/remove_egg
