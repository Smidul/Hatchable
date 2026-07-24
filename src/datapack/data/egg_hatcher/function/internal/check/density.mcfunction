function egg_hatcher:debug/log {category:"checks",category_label:"Checks",level:"Trace",level_color:"gray",message:"Checking nearby entity density."}
$execute store result score #density_count egg_hatcher.temp if entity @e[type=#egg_hatcher:density_entities,distance=..$(density_range)]
execute store result score #density_limit egg_hatcher.temp run data get storage egg_hatcher:config density.limit
execute if score #density_count egg_hatcher.temp < #density_limit egg_hatcher.temp run return run function egg_hatcher:internal/check/chance with storage egg_hatcher:macro
function egg_hatcher:debug/log {category:"checks",category_label:"Checks",level:"Warning",level_color:"yellow",message:"Removed an egg because the density limit was reached."}
kill @s
