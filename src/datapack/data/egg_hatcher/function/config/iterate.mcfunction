$data modify storage egg_hatcher:temp config_iterator set value {operation:"$(operation)",queue:[]}
$data modify storage egg_hatcher:temp config_iterator.queue set from storage egg_hatcher:definitions $(source)
function egg_hatcher:config/iterate/next with storage egg_hatcher:temp config_iterator
