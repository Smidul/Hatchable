function hatchable:config/ui/prepare_reset {path:"feedback",return_function:"hatchable:config/feedback",per_player:0,player_tag:"unused"}
data modify storage hatchable:temp ui.header set value {screen:"page",title:"Feedback Settings",title_color:"aqua",back_command:"/function hatchable:_config",back_hover:"Return to the main config screen.",reset_command:"/function hatchable:config/reset {path:'feedback',return_function:'hatchable:config/feedback',per_player:0,player_tag:'unused'}",reset_hover:"Restore all feedback settings to their defaults.",reset_inactive_hover:"All feedback settings already use their defaults."}
function hatchable:config/ui/header
function hatchable:config/ui/render/list/start {source:"pages.feedback",return_function:"hatchable:config/feedback"}
