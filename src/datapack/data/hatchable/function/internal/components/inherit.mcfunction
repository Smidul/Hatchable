# Try every supported minecraft:<resolved_entity>/<component> key on the actual item stack.
data modify storage hatchable:temp hatch_entity_components set from storage hatchable:definitions entity_components
function hatchable:internal/components/next
data remove storage hatchable:temp hatch_entity_components
