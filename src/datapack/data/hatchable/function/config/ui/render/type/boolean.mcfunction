data modify storage hatchable:temp ui.boolean set value {symbol:"✖",color:"red",state:"Disabled",default_state:"Disabled",default_color:"red",per_player:0,player_tag:"unused"}
data modify storage hatchable:temp ui.boolean merge from storage hatchable:temp ui.entry
execute store result score #perPlayer hatchable.temp run data get storage hatchable:temp ui.boolean.per_player
execute store result score #default hatchable.temp run data get storage hatchable:temp ui.boolean.default
scoreboard players operation #toggle hatchable.temp = #default hatchable.temp
$execute if score #perPlayer hatchable.temp matches 0 store result score #toggle hatchable.temp run data get storage hatchable:config $(path)
$execute if score #perPlayer hatchable.temp matches 1 if entity @s[tag=$(player_tag)] if score #default hatchable.temp matches 0 run scoreboard players set #toggle hatchable.temp 1
$execute if score #perPlayer hatchable.temp matches 1 if entity @s[tag=$(player_tag)] unless score #default hatchable.temp matches 0 run scoreboard players set #toggle hatchable.temp 0
execute unless score #toggle hatchable.temp matches 0 run data modify storage hatchable:temp ui.boolean.symbol set value "✔"
execute unless score #toggle hatchable.temp matches 0 run data modify storage hatchable:temp ui.boolean.color set value "green"
execute unless score #toggle hatchable.temp matches 0 run data modify storage hatchable:temp ui.boolean.state set value "Enabled"
execute unless score #default hatchable.temp matches 0 run data modify storage hatchable:temp ui.boolean.default_state set value "Enabled"
execute unless score #default hatchable.temp matches 0 run data modify storage hatchable:temp ui.boolean.default_color set value "green"
function hatchable:config/ui/prepare_reset with storage hatchable:temp ui.boolean
execute if score #resetActive hatchable.temp matches 1.. run function hatchable:config/ui/reset/boolean/active with storage hatchable:temp ui.boolean
execute unless score #resetActive hatchable.temp matches 1.. run function hatchable:config/ui/reset/boolean/inactive with storage hatchable:temp ui.boolean
function hatchable:config/ui/render {source:"ui.boolean",renderer:"line/boolean"}
