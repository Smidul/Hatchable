$execute unless entity @a[tag=hatchable.debug,tag=!hatchable.debug.$(category).disabled] run return 0
$tellraw @a[tag=hatchable.debug,tag=!hatchable.debug.$(category).disabled] [{"text":"[Hatchable/$(category_label)] ","color":"gold"},{"text":"[$(level)] ","color":"$(level_color)"},{"text":"$(message)","color":"gray"}]
