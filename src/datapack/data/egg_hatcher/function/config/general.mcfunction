scoreboard players set #resetActive egg_hatcher.temp 0
function egg_hatcher:config/iterate/all {operation:"compare_all"}
data modify storage egg_hatcher:temp ui.header set value {screen:"general",reset_command:"/function egg_hatcher:config/reset_all",reset_hover:"Restore every configurable Egg Hatcher value to its default.",reset_inactive_hover:"All settings already use their defaults."}
function egg_hatcher:config/ui/header
function egg_hatcher:config/ui/render/list/start {source:"pages.general",return_function:"egg_hatcher:_config"}
