# minecraft:entity_data can provide both the entity type and base summon data.
data remove storage hatchable:temp hatch_entity_component
execute if data entity @s Item.components."minecraft:entity_data" run data modify storage hatchable:temp hatch_entity_component set from entity @s Item.components."minecraft:entity_data"
execute unless data storage hatchable:temp hatch_entity_component if data entity @s item.components."minecraft:entity_data" run data modify storage hatchable:temp hatch_entity_component set from entity @s item.components."minecraft:entity_data"

execute if data storage hatchable:temp hatch_entity_component.id run data modify storage hatchable:temp hatch_item_entity set from storage hatchable:temp hatch_entity_component.id
execute if data storage hatchable:temp hatch_item_entity run data modify storage hatchable:temp hatch_selected.entity set from storage hatchable:temp hatch_item_entity
data remove storage hatchable:temp hatch_entity_component.id
execute if data storage hatchable:temp hatch_entity_component run data modify storage hatchable:temp hatch_item_data set from storage hatchable:temp hatch_entity_component
data remove storage hatchable:temp hatch_entity_component
