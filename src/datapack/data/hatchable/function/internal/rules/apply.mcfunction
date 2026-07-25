scoreboard players set #mappingMatched hatchable.temp 1
execute if data storage hatchable:temp hatch_rule.hatchers run scoreboard players set #hatcherMatched hatchable.temp 1
execute if data storage hatchable:temp hatch_rule.entity run data modify storage hatchable:temp hatch_selected.entity set from storage hatchable:temp hatch_rule.entity
execute if data storage hatchable:temp hatch_rule.chance run data modify storage hatchable:temp hatch_selected.chance set from storage hatchable:temp hatch_rule.chance
execute if data storage hatchable:temp hatch_rule.minimum_item_age run data modify storage hatchable:temp hatch_selected.minimum_item_age set from storage hatchable:temp hatch_rule.minimum_item_age
execute if data storage hatchable:temp hatch_rule.entity_age run data modify storage hatchable:temp hatch_selected.entity_age set from storage hatchable:temp hatch_rule.entity_age
execute if data storage hatchable:temp hatch_rule.density_limit run data modify storage hatchable:temp hatch_selected.density_limit set from storage hatchable:temp hatch_rule.density_limit
execute if data storage hatchable:temp hatch_rule.density_range run data modify storage hatchable:temp hatch_selected.density_range set from storage hatchable:temp hatch_rule.density_range
execute if data storage hatchable:temp hatch_rule.entity_data run data modify storage hatchable:temp hatch_selected.entity_data merge from storage hatchable:temp hatch_rule.entity_data
