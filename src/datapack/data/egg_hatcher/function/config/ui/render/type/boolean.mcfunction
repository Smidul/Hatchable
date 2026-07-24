data modify storage egg_hatcher:temp ui.boolean set value {symbol:"✖",color:"red",state:"Disabled",default_state:"Disabled",default_color:"red",per_player:0,player_tag:"unused"}
data modify storage egg_hatcher:temp ui.boolean merge from storage egg_hatcher:temp ui.entry
execute store result score #perPlayer egg_hatcher.temp run data get storage egg_hatcher:temp ui.boolean.per_player
execute store result score #default egg_hatcher.temp run data get storage egg_hatcher:temp ui.boolean.default
scoreboard players operation #toggle egg_hatcher.temp = #default egg_hatcher.temp
$execute if score #perPlayer egg_hatcher.temp matches 0 store result score #toggle egg_hatcher.temp run data get storage egg_hatcher:config $(path)
$execute if score #perPlayer egg_hatcher.temp matches 1 if entity @s[tag=$(player_tag)] if score #default egg_hatcher.temp matches 0 run scoreboard players set #toggle egg_hatcher.temp 1
$execute if score #perPlayer egg_hatcher.temp matches 1 if entity @s[tag=$(player_tag)] unless score #default egg_hatcher.temp matches 0 run scoreboard players set #toggle egg_hatcher.temp 0
execute unless score #toggle egg_hatcher.temp matches 0 run data modify storage egg_hatcher:temp ui.boolean.symbol set value "✔"
execute unless score #toggle egg_hatcher.temp matches 0 run data modify storage egg_hatcher:temp ui.boolean.color set value "green"
execute unless score #toggle egg_hatcher.temp matches 0 run data modify storage egg_hatcher:temp ui.boolean.state set value "Enabled"
execute unless score #default egg_hatcher.temp matches 0 run data modify storage egg_hatcher:temp ui.boolean.default_state set value "Enabled"
execute unless score #default egg_hatcher.temp matches 0 run data modify storage egg_hatcher:temp ui.boolean.default_color set value "green"
function egg_hatcher:config/ui/prepare_reset with storage egg_hatcher:temp ui.boolean
function egg_hatcher:config/ui/render {source:"ui.boolean",renderer:"line/boolean"}
