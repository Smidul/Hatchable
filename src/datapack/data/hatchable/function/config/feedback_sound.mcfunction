$data modify storage hatchable:temp ui.feedback_sound set value {path:"$(path)"}
$function hatchable:config/ui/prepare_reset {path:"$(path).sound",return_function:"hatchable:config/feedback_sound_current",per_player:0,player_tag:"unused"}
$data modify storage hatchable:temp ui.header set value {screen:"sound",title:"",back_command:"/function hatchable:config/feedback",back_hover:"Return to feedback settings.",reset_command:"/function hatchable:config/reset {path:'$(path).sound',return_function:'hatchable:config/feedback_sound_current',per_player:0,player_tag:'unused'}",reset_hover:"Restore this sound to its defaults.",reset_inactive_hover:"This sound already uses its defaults."}
$data modify storage hatchable:temp ui.header.title set from storage hatchable:definitions translations.$(path).name
function hatchable:config/ui/header
$function hatchable:config/ui/render/list/start {source:"pages.feedback_sound.$(path)",return_function:"hatchable:config/feedback_sound_current"}
