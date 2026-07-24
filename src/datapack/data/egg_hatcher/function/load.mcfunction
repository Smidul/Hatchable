# Runtime objective used by hatch checks and configuration controls.
scoreboard objectives add egg_hatcher.temp dummy

# Preserve the previous default snapshot before rebuilding it from the current setting definitions.
data remove storage egg_hatcher:temp old_defaults
data modify storage egg_hatcher:temp old_defaults set from storage egg_hatcher:defaults values
function egg_hatcher:config/defaults
# Debug subscriptions and categories are per-player tags. Remove obsolete global values.
data remove storage egg_hatcher:config debug
data remove storage egg_hatcher:config debug_categories
data merge storage egg_hatcher:config {density:{},feedback:{hatch:{sound:{}}}}
function egg_hatcher:config/migrate_legacy
function egg_hatcher:config/iterate/all {operation:"migrate"}

schedule function egg_hatcher:schedule 1s replace
