$execute unless entity @a[tag=egg_hatcher.debug,tag=!egg_hatcher.debug.$(category).disabled] run return 0
$tellraw @a[tag=egg_hatcher.debug,tag=!egg_hatcher.debug.$(category).disabled] [{"text":"[Egg Hatcher/$(category_label)] ","color":"gold"},{"text":"[$(level)] ","color":"$(level_color)"},{"text":"$(message)","color":"gray"}]
