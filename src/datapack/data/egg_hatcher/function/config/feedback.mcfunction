function egg_hatcher:config/ui/prepare_reset {path:"feedback",return_function:"egg_hatcher:config/feedback",per_player:0,player_tag:"unused"}
data modify storage egg_hatcher:temp ui.header set value {screen:"page",title:"Feedback Settings",back_command:"/function egg_hatcher:_config",back_hover:"Return to the main config screen.",reset_command:"/function egg_hatcher:config/reset {path:'feedback',return_function:'egg_hatcher:config/feedback',per_player:0,player_tag:'unused'}",reset_hover:"Restore all feedback settings to their defaults.",reset_inactive_hover:"All feedback settings already use their defaults."}
function egg_hatcher:config/ui/header
function egg_hatcher:config/ui/render/list/start {source:"pages.feedback",return_function:"egg_hatcher:config/feedback"}
