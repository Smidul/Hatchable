execute unless data storage hatchable:temp migration.mappings[0] run return 0
data modify storage hatchable:temp migration.rule set from storage hatchable:temp migration.mappings[0]
data remove storage hatchable:temp migration.mappings[0]
execute if data storage hatchable:temp migration.rule.items run function hatchable:config/migrate_mappings/list/start {field:"items"}
execute if data storage hatchable:temp migration.rule.hatchers run function hatchable:config/migrate_mappings/list/start {field:"hatchers"}
data modify storage hatchable:config hatch_mappings append from storage hatchable:temp migration.rule
function hatchable:config/migrate_mappings/next
