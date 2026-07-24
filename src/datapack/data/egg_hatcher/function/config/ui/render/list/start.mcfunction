$data modify storage egg_hatcher:temp ui.context set value {return_function:"$(return_function)",queue:[]}
$data modify storage egg_hatcher:temp ui.context.queue set from storage egg_hatcher:definitions $(source)
function egg_hatcher:config/ui/render/list/next
