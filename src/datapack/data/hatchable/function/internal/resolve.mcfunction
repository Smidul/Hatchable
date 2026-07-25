data modify storage hatchable:temp hatch_resolved.chance set from storage hatchable:config chance
data modify storage hatchable:temp hatch_resolved.minimum_item_age set from storage hatchable:config minimum_item_age
data modify storage hatchable:temp hatch_resolved.entity_age set from storage hatchable:config entity_age
data modify storage hatchable:temp hatch_resolved.density_limit set from storage hatchable:config density.limit
data modify storage hatchable:temp hatch_resolved.density_range set from storage hatchable:config density.range
execute if data storage hatchable:config {mapping_forces:{chance:0b}} if data storage hatchable:temp hatch_selected.chance run data modify storage hatchable:temp hatch_resolved.chance set from storage hatchable:temp hatch_selected.chance
execute if data storage hatchable:config {mapping_forces:{minimum_item_age:0b}} if data storage hatchable:temp hatch_selected.minimum_item_age run data modify storage hatchable:temp hatch_resolved.minimum_item_age set from storage hatchable:temp hatch_selected.minimum_item_age
execute if data storage hatchable:config {mapping_forces:{entity_age:0b}} if data storage hatchable:temp hatch_selected.entity_age run data modify storage hatchable:temp hatch_resolved.entity_age set from storage hatchable:temp hatch_selected.entity_age
execute if data storage hatchable:config {mapping_forces:{density_limit:0b}} if data storage hatchable:temp hatch_selected.density_limit run data modify storage hatchable:temp hatch_resolved.density_limit set from storage hatchable:temp hatch_selected.density_limit
execute if data storage hatchable:config {mapping_forces:{density_range:0b}} if data storage hatchable:temp hatch_selected.density_range run data modify storage hatchable:temp hatch_resolved.density_range set from storage hatchable:temp hatch_selected.density_range
function hatchable:internal/check/age
