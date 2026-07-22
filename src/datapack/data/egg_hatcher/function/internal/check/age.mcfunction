execute if data storage egg_hatcher:config {debug: 1b} run tellraw @a [{"text":"[Egg Hatcher] ","color":"gold"},{"text":"[","color":"dark_gray"},{"nbt":"Item.id","entity":"@s","color":"green"},{"text":"] ","color":"dark_gray"},{"text":"Checking age...","color":"gray"}]

# 1. Get the Age into a scoreboard
execute store result score #age egg_hatcher.temp run data get entity @s Age

# 2. Check if Age is not 5900 or less
execute if score #age egg_hatcher.temp matches ..5900 run return fail

# 3. Set up the macro storage
data modify storage egg_hatcher:macro density_range set from storage egg_hatcher:config density.range
data modify storage egg_hatcher:macro density_limit set from storage egg_hatcher:config density.limit
data modify storage egg_hatcher:macro chance set from storage egg_hatcher:config chance
data modify storage egg_hatcher:macro id set from entity @s Item.id

# 4. Call the density check with the storage macros
function egg_hatcher:internal/check/density with storage egg_hatcher:macro