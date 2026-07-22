execute if data storage egg_hatcher:config {debug: 1b} run tellraw @a [{"text":"[Egg Hatcher] ","color":"gold"},{"text":"[","color":"dark_gray"},{"nbt":"Item.id","entity":"@s","color":"green"},{"text":"] ","color":"dark_gray"},{"text":"Checking density...","color":"gray"}]

# 1. Count how many chickens are within a range
$execute store result score #density_count egg_hatcher.temp if entity @e[type=chicken,distance=..$(density_range)]

# 2. Load the limit into a scoreboard for comparison
$scoreboard players set #density_limit egg_hatcher.temp $(density_limit)

# 3. Only hatch if the count is strictly LESS than the limit.
execute if score #density_count egg_hatcher.temp < #density_limit egg_hatcher.temp run return run function egg_hatcher:internal/check/chance with storage egg_hatcher:macro

# 4. If we reach here, the density check failed; kill the egg.
execute if data storage egg_hatcher:config {debug: 1b} run tellraw @a [{"text":"[Egg Hatcher] ","color":"gold"},{"text":"[","color":"dark_gray"},{"nbt":"Item.id","entity":"@s","color":"green"},{"text":"] ","color":"dark_gray"},{"text":"Density check failed","color":"red"}]
kill @s