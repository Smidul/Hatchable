data modify storage hatchable:temp migration.mappings set from storage hatchable:config hatch_mappings
data modify storage hatchable:config hatch_mappings set value []
function hatchable:config/migrate_mappings/next
data remove storage hatchable:temp migration
