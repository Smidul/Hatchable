data remove storage egg_hatcher:temp config_compare
$data modify storage egg_hatcher:temp config_compare set from storage egg_hatcher:config $(path)
$execute store success score #settingDifferent egg_hatcher.temp run data modify storage egg_hatcher:temp config_compare set from storage egg_hatcher:temp old_defaults.$(path)
$execute if score #settingDifferent egg_hatcher.temp matches 0 run data modify storage egg_hatcher:config $(path) set from storage egg_hatcher:temp config_iterator.arguments.default
