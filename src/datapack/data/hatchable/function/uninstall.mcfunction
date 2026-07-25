schedule clear hatchable:schedule
scoreboard objectives remove hatchable.temp

data remove storage hatchable:config density
data remove storage hatchable:config chance
data remove storage hatchable:config variants
data remove storage hatchable:config hatch_mappings
data remove storage hatchable:config minimum_item_age
data remove storage hatchable:config entity_age
data remove storage hatchable:config mapping_forces
data remove storage hatchable:config feedback
data remove storage hatchable:config sound
data remove storage hatchable:config debug
data remove storage hatchable:config debug_categories

tag @a remove hatchable.debug
tag @a remove hatchable.debug.tracking.disabled
tag @a remove hatchable.debug.checks.disabled
tag @a remove hatchable.debug.hatching.disabled
tag @a remove hatchable.debug.config.disabled
