data modify storage hatchable:temp ui.list set from storage hatchable:temp ui.entry
execute unless data storage hatchable:temp ui.list.entry_type run data modify storage hatchable:temp ui.list.entry_type set value "object"
data modify storage hatchable:temp ui.list.append_value set value "{}"
execute if data storage hatchable:temp ui.list{entry_type:"string"} run data modify storage hatchable:temp ui.list.append_value set value "\"\""
execute if data storage hatchable:temp ui.list{entry_type:"number"} run data modify storage hatchable:temp ui.list.append_value set value "0"
execute if data storage hatchable:temp ui.list{entry_type:"boolean"} run data modify storage hatchable:temp ui.list.append_value set value "0b"
execute if data storage hatchable:temp ui.list{entry_type:"list"} run data modify storage hatchable:temp ui.list.append_value set value "[]"
function hatchable:config/ui/prepare_reset_with_default with storage hatchable:temp ui.list
function hatchable:config/ui/render {source:"ui.list",renderer:"line/list"}
