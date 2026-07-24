execute store result score #count egg_hatcher.temp run data get entity @s Item.count
execute unless data entity @s Item.count store result score #count egg_hatcher.temp run data get entity @s item.count
execute if score #count egg_hatcher.temp matches ..1 run return run kill @s
scoreboard players remove #count egg_hatcher.temp 1
execute if data entity @s Item.count store result entity @s Item.count byte 1 run scoreboard players get #count egg_hatcher.temp
execute unless data entity @s Item.count store result entity @s item.count byte 1 run scoreboard players get #count egg_hatcher.temp
execute store result score #age egg_hatcher.temp run data get entity @s Age
scoreboard players remove #age egg_hatcher.temp 20
execute store result entity @s Age short 1 run scoreboard players get #age egg_hatcher.temp
