summon minecraft:chicken ~ ~ ~ {Age:-24000}
execute if data storage egg_hatcher:config {feedback:{hatch:{particles:1b}}} run particle minecraft:egg_crack ~ ~ ~ 0.25 0.25 0.25 1 15
$execute if data storage egg_hatcher:config {feedback:{hatch:{sound:{enabled:1b}}}} run playsound $(sound_id) $(sound_category) @a ~ ~ ~ $(sound_volume) $(sound_pitch)
function egg_hatcher:debug/log {category:"hatching",category_label:"Hatching",level:"Info",level_color:"green",message:"Hatched a baby chicken."}
function egg_hatcher:internal/remove_egg
