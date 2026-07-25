execute if score #itemsMatch hatchable.temp matches 1 run return 0
execute unless data storage hatchable:temp hatch_items[0] run return 0

data modify storage hatchable:temp hatch_item.item set from storage hatchable:temp hatch_items[0]
function hatchable:internal/items/match with storage hatchable:temp hatch_item
data remove storage hatchable:temp hatch_items[0]
function hatchable:internal/items/next
