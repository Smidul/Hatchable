# Runtime objective used by hatch checks and configuration controls.
scoreboard objectives add hatchable.temp dummy

function hatchable:config/migrate_namespace

# Preserve the previous default snapshot before rebuilding it from the current setting definitions.
data remove storage hatchable:temp old_defaults
data modify storage hatchable:temp old_defaults set from storage hatchable:defaults values
function hatchable:config/defaults
# Debug subscriptions and categories are per-player tags. Remove obsolete global values.
data remove storage hatchable:config debug
data remove storage hatchable:config debug_categories
data merge storage hatchable:config {mapping_forces:{},density:{},feedback:{hatch:{sound:{}}}}
function hatchable:config/migrate_legacy
function hatchable:config/iterate/all {operation:"migrate"}
execute if data storage hatchable:temp {migrated_namespace:1b} if data storage hatchable:config hatch_mappings run function hatchable:config/migrate_mappings/start
data remove storage hatchable:temp migrated_namespace

schedule function hatchable:schedule 1s replace
