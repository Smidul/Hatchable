$data modify storage hatchable:temp config_iterator set value {operation:"$(operation)",queue:[]}
$data modify storage hatchable:temp config_iterator.queue set from storage hatchable:definitions $(source)
function hatchable:config/iterate/next with storage hatchable:temp config_iterator
