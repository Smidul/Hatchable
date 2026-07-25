scoreboard players set #entityDataCompatible hatchable.temp 0
data modify storage hatchable:temp entity_compare set from storage hatchable:temp hatch_selected.entity
execute store success score #entityDifferent hatchable.temp run data modify storage hatchable:temp entity_compare set from storage hatchable:temp hatch_item_entity
execute if score #entityDifferent hatchable.temp matches 0 run scoreboard players set #entityDataCompatible hatchable.temp 1
execute if score #entityDataCompatible hatchable.temp matches 1 if data storage hatchable:temp hatch_item_data run data modify storage hatchable:macro data merge from storage hatchable:temp hatch_item_data
data remove storage hatchable:temp entity_compare
