$data modify storage hatchable:temp migration.values set from storage hatchable:temp migration.rule.$(field)
$data modify storage hatchable:temp migration.rule.$(field) set value []
$data modify storage hatchable:temp migration.field set value "$(field)"
function hatchable:config/migrate_mappings/list/next with storage hatchable:temp migration
