data modify storage hatchable:temp ui.forced_value set from storage hatchable:temp ui.entry
data modify storage hatchable:temp ui.forced_value merge value {unit:"",force_symbol:"✖",force_color:"red",default_force_state:"Disabled",default_force_color:"red"}
execute if data storage hatchable:temp ui.entry{format:"percent"} run data modify storage hatchable:temp ui.forced_value.unit set value "%"
execute if data storage hatchable:temp ui.entry{format:"ticks"} run data modify storage hatchable:temp ui.forced_value.unit set value "t"
execute if data storage hatchable:temp ui.entry{format:"blocks"} run data modify storage hatchable:temp ui.forced_value.unit set value "b"
$data modify storage hatchable:temp ui.forced_value.current set from storage hatchable:config $(path)
$data modify storage hatchable:temp ui.forced_value.force_description set from storage hatchable:definitions translations.$(force_path).description
$execute store result score #forceCurrent hatchable.temp run data get storage hatchable:config $(force_path)
execute if score #forceCurrent hatchable.temp matches 1 run data modify storage hatchable:temp ui.forced_value.force_symbol set value "✔"
execute if score #forceCurrent hatchable.temp matches 1 run data modify storage hatchable:temp ui.forced_value.force_color set value "green"
$execute store result score #forceDefault hatchable.temp run data get storage hatchable:defaults values.$(force_path)
execute if score #forceDefault hatchable.temp matches 1 run data modify storage hatchable:temp ui.forced_value.default_force_state set value "Enabled"
execute if score #forceDefault hatchable.temp matches 1 run data modify storage hatchable:temp ui.forced_value.default_force_color set value "green"

scoreboard players set #resetActive hatchable.temp 0
data remove storage hatchable:temp config_compare
$data modify storage hatchable:temp config_compare set from storage hatchable:config $(path)
$execute store success score #settingDifferent hatchable.temp run data modify storage hatchable:temp config_compare set from storage hatchable:defaults values.$(path)
execute if score #settingDifferent hatchable.temp matches 1 run scoreboard players set #resetActive hatchable.temp 1
data remove storage hatchable:temp config_compare
$data modify storage hatchable:temp config_compare set from storage hatchable:config $(force_path)
$execute store success score #settingDifferent hatchable.temp run data modify storage hatchable:temp config_compare set from storage hatchable:defaults values.$(force_path)
execute if score #settingDifferent hatchable.temp matches 1 run scoreboard players set #resetActive hatchable.temp 1
execute if score #resetActive hatchable.temp matches 1 run function hatchable:config/ui/reset/forced_value/active with storage hatchable:temp ui.forced_value
execute unless score #resetActive hatchable.temp matches 1 run function hatchable:config/ui/reset/forced_value/inactive with storage hatchable:temp ui.forced_value
function hatchable:config/ui/render {source:"ui.forced_value",renderer:"line/forced_value"}
