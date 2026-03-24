# 1. Get the item count into the scoreboard.
execute store result score #count egg_hatcher.temp run data get entity @s Item.count

# 2. If count is 1 or somehow less, return by killing the item immediately as it's the last egg.
execute if score #count egg_hatcher.temp matches ..1 run return run kill @s

# 3. If we reach here, the item count was > 1, so decrement it by 1.
execute run scoreboard players remove #count egg_hatcher.temp 1
execute store result entity @s Item.count byte 1 run scoreboard players get #count egg_hatcher.temp

# 4. Decrease the Age by 20 ticks to reset the hatch timer (preventing instant multi-hatch).
execute store result score #age egg_hatcher.temp run data get entity @s Age
execute run scoreboard players remove #age egg_hatcher.temp 20
execute store result entity @s Age short 1 run scoreboard players get #age egg_hatcher.temp