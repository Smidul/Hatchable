execute if score #hatchersMatch hatchable.temp matches 1 run return 0
execute unless data storage hatchable:temp hatch_hatchers[0] run return 0

data modify storage hatchable:temp hatch_hatcher.hatcher set from storage hatchable:temp hatch_hatchers[0]
function hatchable:internal/hatchers/match with storage hatchable:temp hatch_hatcher
data remove storage hatchable:temp hatch_hatchers[0]
function hatchable:internal/hatchers/next
