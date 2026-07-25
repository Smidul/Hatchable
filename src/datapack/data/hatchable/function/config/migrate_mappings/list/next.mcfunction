execute unless data storage hatchable:temp migration.values[0] run return 0
data modify storage hatchable:temp migration.value set from storage hatchable:temp migration.values[0]
data remove storage hatchable:temp migration.values[0]
function hatchable:config/migrate_mappings/list/rewrite
$data modify storage hatchable:temp migration.rule.$(field) append from storage hatchable:temp migration.value
function hatchable:config/migrate_mappings/list/next with storage hatchable:temp migration
