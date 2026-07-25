data modify storage hatchable:temp ui.value set from storage hatchable:temp ui.entry
data modify storage hatchable:temp ui.value.unit set value ""
execute if data storage hatchable:temp ui.entry{format:"seconds"} run data modify storage hatchable:temp ui.value.unit set value "s"
execute if data storage hatchable:temp ui.entry{format:"percent"} run data modify storage hatchable:temp ui.value.unit set value "%"
$data modify storage hatchable:temp ui.value.current set from storage hatchable:config $(path)
function hatchable:config/ui/prepare_reset with storage hatchable:temp ui.value
execute if data storage hatchable:temp ui.value{format:"string"} run function hatchable:config/ui/render {source:"ui.value",renderer:"line/value_string"}
execute unless data storage hatchable:temp ui.value{format:"string"} run function hatchable:config/ui/render {source:"ui.value",renderer:"line/value_number"}
