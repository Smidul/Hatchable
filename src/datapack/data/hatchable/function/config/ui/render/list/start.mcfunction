$data modify storage hatchable:temp ui.context set value {return_function:"$(return_function)",queue:[]}
$data modify storage hatchable:temp ui.context.queue set from storage hatchable:definitions $(source)
function hatchable:config/ui/render/list/next
