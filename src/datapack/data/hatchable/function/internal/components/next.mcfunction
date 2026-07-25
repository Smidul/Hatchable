execute unless data storage hatchable:temp hatch_entity_components[0] run return 0
data modify storage hatchable:macro component set from storage hatchable:temp hatch_entity_components[0]
data remove storage hatchable:temp hatch_entity_components[0]
function hatchable:internal/components/copy with storage hatchable:macro
function hatchable:internal/components/next
