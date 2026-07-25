scoreboard players set #resetActive hatchable.temp 0
function hatchable:config/iterate {operation:"compare_all",source:"pages.debug"}
data modify storage hatchable:temp ui.header set value {screen:"page",title:"Debug Settings",title_color:"dark_red",back_command:"/function hatchable:_config",back_hover:"Return to the main config screen.",reset_command:"/function hatchable:config/reset_group {source:'pages.debug',return_function:'hatchable:config/debug'}",reset_hover:"Restore your debug settings to their defaults.",reset_inactive_hover:"Your debug settings already use their defaults."}
function hatchable:config/ui/header
function hatchable:config/ui/render/list/start {source:"pages.debug",return_function:"hatchable:config/debug"}
