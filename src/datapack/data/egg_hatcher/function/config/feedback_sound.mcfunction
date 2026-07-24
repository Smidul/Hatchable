$data modify storage egg_hatcher:temp ui.feedback_sound set value {path:"$(path)"}
$function egg_hatcher:config/ui/prepare_reset {path:"$(path).sound",return_function:"egg_hatcher:config/feedback_sound_current",per_player:0,player_tag:"unused"}
$data modify storage egg_hatcher:temp ui.header set value {screen:"sound",title:"",back_command:"/function egg_hatcher:config/feedback",back_hover:"Return to feedback settings.",reset_command:"/function egg_hatcher:config/reset {path:'$(path).sound',return_function:'egg_hatcher:config/feedback_sound_current',per_player:0,player_tag:'unused'}",reset_hover:"Restore this sound to its defaults.",reset_inactive_hover:"This sound already uses its defaults."}
$data modify storage egg_hatcher:temp ui.header.title set from storage egg_hatcher:definitions translations.$(path).name
function egg_hatcher:config/ui/header
$function egg_hatcher:config/ui/render/list/start {source:"pages.feedback_sound.$(path)",return_function:"egg_hatcher:config/feedback_sound_current"}
