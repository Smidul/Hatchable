function egg_hatcher:debug/log {category:"hatching",category_label:"Hatching",level:"Trace",level_color:"gray",message:"Resolving the chicken variant."}
data modify storage egg_hatcher:macro variant set value "minecraft:temperate"
$data modify storage egg_hatcher:macro variant set from storage egg_hatcher:config variants.$(id)
execute if data entity @s Item.components."minecraft:chicken/variant" run data modify storage egg_hatcher:macro variant set from entity @s Item.components."minecraft:chicken/variant"
execute if data entity @s item.components."minecraft:chicken/variant" run data modify storage egg_hatcher:macro variant set from entity @s item.components."minecraft:chicken/variant"
data modify storage egg_hatcher:macro sound_id set from storage egg_hatcher:config feedback.hatch.sound.id
data modify storage egg_hatcher:macro sound_category set from storage egg_hatcher:config feedback.hatch.sound.category
data modify storage egg_hatcher:macro sound_volume set from storage egg_hatcher:config feedback.hatch.sound.volume
data modify storage egg_hatcher:macro sound_pitch set from storage egg_hatcher:config feedback.hatch.sound.pitch
function egg_hatcher:internal/spawn_chicken with storage egg_hatcher:macro
