execute unless data storage hatchable:temp hatch_rules[0] run return 0

data modify storage hatchable:temp hatch_rule set from storage hatchable:temp hatch_rules[0]
data remove storage hatchable:temp hatch_rules[0]

# Missing selectors match anything. Present but empty selector lists match nothing.
scoreboard players set #itemsMatch hatchable.temp 1
execute if data storage hatchable:temp hatch_rule.items run scoreboard players set #itemsMatch hatchable.temp 0
data modify storage hatchable:temp hatch_items set value []
execute if data storage hatchable:temp hatch_rule.items[0] run data modify storage hatchable:temp hatch_items set from storage hatchable:temp hatch_rule.items
function hatchable:internal/items/next

scoreboard players set #hatchersMatch hatchable.temp 1
execute if data storage hatchable:temp hatch_rule.hatchers run scoreboard players set #hatchersMatch hatchable.temp 0
data modify storage hatchable:temp hatch_hatchers set value []
execute if data storage hatchable:temp hatch_rule.hatchers[0] run data modify storage hatchable:temp hatch_hatchers set from storage hatchable:temp hatch_rule.hatchers
function hatchable:internal/hatchers/next

scoreboard players set #predicateMatch hatchable.temp 1
execute if data storage hatchable:temp hatch_rule.predicate run scoreboard players set #predicateMatch hatchable.temp 0
execute if data storage hatchable:temp hatch_rule.predicate run function hatchable:internal/predicates/match with storage hatchable:temp hatch_rule

execute if score #itemsMatch hatchable.temp matches 1 if score #hatchersMatch hatchable.temp matches 1 if score #predicateMatch hatchable.temp matches 1 run function hatchable:internal/rules/apply

function hatchable:internal/rules/next
