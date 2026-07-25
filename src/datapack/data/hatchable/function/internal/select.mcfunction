data modify storage hatchable:temp hatch_selected set value {entity_data:{}}
data remove storage hatchable:temp hatch_item_entity
data remove storage hatchable:temp hatch_item_data
function hatchable:internal/components/read_item

scoreboard players set #mappingMatched hatchable.temp 0
scoreboard players set #hatcherMatched hatchable.temp 0
data modify storage hatchable:temp hatch_rules set from storage hatchable:config hatch_mappings
function hatchable:internal/rules/next

execute if score #mappingMatched hatchable.temp matches 1 if score #hatcherMatched hatchable.temp matches 1 if data storage hatchable:temp hatch_selected.entity run function hatchable:internal/resolve
execute if score #mappingMatched hatchable.temp matches 1 if score #hatcherMatched hatchable.temp matches 1 unless data storage hatchable:temp hatch_selected.entity run function hatchable:debug/log {category:"hatching",category_label:"Hatching",level:"Warning",level_color:"yellow",message:"Matching hatch rules did not resolve an entity, so the item was left unchanged."}

data remove storage hatchable:temp hatch_rules
data remove storage hatchable:temp hatch_rule
data remove storage hatchable:temp hatch_items
data remove storage hatchable:temp hatch_item
data remove storage hatchable:temp hatch_hatchers
data remove storage hatchable:temp hatch_hatcher
data remove storage hatchable:temp hatch_item_entity
data remove storage hatchable:temp hatch_item_data
data remove storage hatchable:temp hatch_resolved
data remove storage hatchable:temp hatch_selected
