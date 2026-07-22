# 1. Log debug info if enabled
execute if data storage egg_hatcher:config {debug: 1b} run tellraw @a [{"text":"[Egg Hatcher] ","color":"gold"},{"text":"[","color":"dark_gray"},{"nbt":"Item.id","entity":"@s","color":"green"},{"text":"] ","color":"dark_gray"},{"text":"Rolling hatch chance...","color":"gray"}]

# 2. Roll a die 0-100. If the roll is within the chance, pass
execute store result score #roll egg_hatcher.temp run random value 1..100
$execute if score #roll egg_hatcher.temp matches ..$(chance) run return run function egg_hatcher:internal/resolve_variant with storage egg_hatcher:macro

# 3. If we reach here, the chance check failed; remove the egg
execute if data storage egg_hatcher:config {debug: 1b} run tellraw @a [{"text":"[Egg Hatcher] ","color":"gold"},{"text":"[","color":"dark_gray"},{"nbt":"Item.id","entity":"@s","color":"green"},{"text":"] ","color":"dark_gray"},{"text":"Hatch chance check failed","color":"red"}]
function egg_hatcher:internal/remove_egg
