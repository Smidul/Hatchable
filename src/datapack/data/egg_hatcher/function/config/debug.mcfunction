scoreboard players set #resetActive egg_hatcher.temp 0
function egg_hatcher:config/iterate {operation:"compare_all",source:"pages.debug"}
data modify storage egg_hatcher:temp ui.header set value {screen:"page",title:"Debug Settings",back_command:"/function egg_hatcher:_config",back_hover:"Return to the main config screen.",reset_command:"/function egg_hatcher:config/reset_group {source:'pages.debug',return_function:'egg_hatcher:config/debug'}",reset_hover:"Restore your debug settings to their defaults.",reset_inactive_hover:"Your debug settings already use their defaults."}
function egg_hatcher:config/ui/header
function egg_hatcher:config/ui/render/list/start {source:"pages.debug",return_function:"egg_hatcher:config/debug"}
