# Migrate recognized Egg Hatcher configuration into the Hatchable namespace.
scoreboard players set #oldNamespace hatchable.temp 0
execute if data storage egg_hatcher:config density run scoreboard players set #oldNamespace hatchable.temp 1
execute if data storage egg_hatcher:config chance run scoreboard players set #oldNamespace hatchable.temp 1
execute if data storage egg_hatcher:config variants run scoreboard players set #oldNamespace hatchable.temp 1
execute if data storage egg_hatcher:config hatch_mappings run scoreboard players set #oldNamespace hatchable.temp 1
execute if data storage egg_hatcher:config minimum_item_age run scoreboard players set #oldNamespace hatchable.temp 1
execute if data storage egg_hatcher:config entity_age run scoreboard players set #oldNamespace hatchable.temp 1
execute if data storage egg_hatcher:config mapping_forces run scoreboard players set #oldNamespace hatchable.temp 1
execute if data storage egg_hatcher:config feedback run scoreboard players set #oldNamespace hatchable.temp 1
execute if data storage egg_hatcher:config sound run scoreboard players set #oldNamespace hatchable.temp 1
execute if data storage egg_hatcher:config debug run scoreboard players set #oldNamespace hatchable.temp 1
execute if data storage egg_hatcher:defaults values run scoreboard players set #oldNamespace hatchable.temp 1
execute unless score #oldNamespace hatchable.temp matches 1 run return 0
data modify storage hatchable:temp migrated_namespace set value 1b

execute if data storage egg_hatcher:config density unless data storage hatchable:config density run data modify storage hatchable:config density set from storage egg_hatcher:config density
execute if data storage egg_hatcher:config chance unless data storage hatchable:config chance run data modify storage hatchable:config chance set from storage egg_hatcher:config chance
execute if data storage egg_hatcher:config hatch_mappings unless data storage hatchable:config hatch_mappings run data modify storage hatchable:config hatch_mappings set from storage egg_hatcher:config hatch_mappings
execute if data storage egg_hatcher:config minimum_item_age unless data storage hatchable:config minimum_item_age run data modify storage hatchable:config minimum_item_age set from storage egg_hatcher:config minimum_item_age
execute if data storage egg_hatcher:config entity_age unless data storage hatchable:config entity_age run data modify storage hatchable:config entity_age set from storage egg_hatcher:config entity_age
execute if data storage egg_hatcher:config mapping_forces unless data storage hatchable:config mapping_forces run data modify storage hatchable:config mapping_forces set from storage egg_hatcher:config mapping_forces
execute if data storage egg_hatcher:config feedback unless data storage hatchable:config feedback run data modify storage hatchable:config feedback set from storage egg_hatcher:config feedback
execute if data storage egg_hatcher:config sound unless data storage hatchable:config feedback.hatch.sound.id run data modify storage hatchable:config feedback.hatch.sound set from storage egg_hatcher:config sound
execute if data storage egg_hatcher:config {debug:1b} run tag @a add hatchable.debug

# Preserve the previous default snapshot so unchanged old defaults can update normally.
execute if data storage egg_hatcher:defaults values unless data storage hatchable:defaults values run data modify storage hatchable:defaults values set from storage egg_hatcher:defaults values

# variants is intentionally deleted without migration or fallback.
data remove storage egg_hatcher:config density
data remove storage egg_hatcher:config chance
data remove storage egg_hatcher:config variants
data remove storage egg_hatcher:config hatch_mappings
data remove storage egg_hatcher:config minimum_item_age
data remove storage egg_hatcher:config entity_age
data remove storage egg_hatcher:config mapping_forces
data remove storage egg_hatcher:config feedback
data remove storage egg_hatcher:config sound
data remove storage egg_hatcher:config debug
data remove storage egg_hatcher:config debug_categories
data remove storage egg_hatcher:defaults values
data remove storage egg_hatcher:definitions pages
data remove storage egg_hatcher:definitions translations
data remove storage egg_hatcher:definitions groups
data remove storage egg_hatcher:definitions hidden
data remove storage egg_hatcher:temp old_defaults
data remove storage egg_hatcher:macro data
schedule clear egg_hatcher:schedule
execute store success score #oldObjective hatchable.temp run scoreboard players set #migration egg_hatcher.temp 0
execute if score #oldObjective hatchable.temp matches 1 run scoreboard objectives remove egg_hatcher.temp
