$execute if score #resetActive hatchable.temp matches 1.. run function hatchable:config/ui/reset/header/active {reset_command:"$(reset_command)",reset_hover:"$(reset_hover)"}
$execute unless score #resetActive hatchable.temp matches 1.. run function hatchable:config/ui/reset/header/inactive {reset_inactive_hover:"$(reset_inactive_hover)"}
