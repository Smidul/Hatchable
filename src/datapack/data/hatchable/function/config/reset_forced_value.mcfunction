$data modify storage hatchable:config $(path) set from storage hatchable:defaults values.$(path)
$data modify storage hatchable:config $(force_path) set from storage hatchable:defaults values.$(force_path)
function hatchable:debug/log {category:"config",category_label:"Config",level:"Info",level_color:"aqua",message:"Reset a forced configuration value."}
$function $(return_function)
