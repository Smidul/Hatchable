execute if data storage egg_hatcher:config {debug: 1b} run tellraw @a [{"text":"[Egg Hatcher] ","color":"gold"},{"text":"[","color":"dark_gray"},{"nbt":"Item.id","entity":"@s","color":"green"},{"text":"] ","color":"dark_gray"},{"text":"Spawning chicken...","color":"green"}]

# 1. Summon the chicken and play a hatch sound.
$summon chicken ~ ~ ~ {Age:-24000, variant:"$(variant)"}

particle minecraft:egg_crack ~ ~ ~ 0.25 0.25 0.25 1 15

$playsound $(sound_id) $(sound_category) @a ~ ~ ~ $(sound_volume) $(sound_pitch)

# 2. Remove the egg from the world, decrementing count or killing.
function egg_hatcher:internal/remove_egg