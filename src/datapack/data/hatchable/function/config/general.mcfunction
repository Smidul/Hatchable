scoreboard players set #resetActive hatchable.temp 0
function hatchable:config/iterate/all {operation:"compare_all"}
data modify storage hatchable:temp ui.header set value {screen:"general",reset_command:"/function hatchable:config/reset_all",reset_hover:"Restore every configurable Hatchable value to its default.",reset_inactive_hover:"All settings already use their defaults."}
function hatchable:config/ui/header
function hatchable:config/ui/render/list/start {source:"pages.general",return_function:"hatchable:_config"}
