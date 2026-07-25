data remove storage hatchable:temp config_compare
$data modify storage hatchable:temp config_compare set from storage hatchable:config $(path)
$execute store success score #settingDifferent hatchable.temp run data modify storage hatchable:temp config_compare set from storage hatchable:temp old_defaults.$(path)
$execute if score #settingDifferent hatchable.temp matches 0 run data modify storage hatchable:config $(path) set from storage hatchable:temp config_iterator.arguments.default
