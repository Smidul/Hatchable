function egg_hatcher:debug/log {category:"tracking",category_label:"Tracking",level:"Trace",level_color:"gray",message:"Checking an eligible egg item."}
execute store result score #age egg_hatcher.temp run data get entity @s Age
execute if score #age egg_hatcher.temp matches ..5900 run return fail

data modify storage egg_hatcher:macro id set value "minecraft:egg"
execute if data entity @s Item.id run data modify storage egg_hatcher:macro id set from entity @s Item.id
execute if data entity @s item.id run data modify storage egg_hatcher:macro id set from entity @s item.id
data modify storage egg_hatcher:macro density_range set from storage egg_hatcher:config density.range
function egg_hatcher:internal/check/density with storage egg_hatcher:macro
