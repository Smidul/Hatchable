execute store result score #count hatchable.temp run data get entity @s Item.count
execute unless data entity @s Item.count store result score #count hatchable.temp run data get entity @s item.count
execute if score #count hatchable.temp matches ..1 run return run kill @s
scoreboard players remove #count hatchable.temp 1
execute if data entity @s Item.count store result entity @s Item.count byte 1 run scoreboard players get #count hatchable.temp
execute unless data entity @s Item.count store result entity @s item.count byte 1 run scoreboard players get #count hatchable.temp
execute store result score #age hatchable.temp run data get entity @s Age
scoreboard players remove #age hatchable.temp 20
execute store result entity @s Age short 1 run scoreboard players get #age hatchable.temp
