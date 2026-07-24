$execute if score #resetActive egg_hatcher.temp matches 1.. run function egg_hatcher:config/ui/reset/header/active {reset_command:"$(reset_command)",reset_hover:"$(reset_hover)"}
$execute unless score #resetActive egg_hatcher.temp matches 1.. run function egg_hatcher:config/ui/reset/header/inactive {reset_inactive_hover:"$(reset_inactive_hover)"}
