data modify storage egg_hatcher:temp ui.value set from storage egg_hatcher:temp ui.entry
data modify storage egg_hatcher:temp ui.value.unit set value ""
execute if data storage egg_hatcher:temp ui.entry{format:"seconds"} run data modify storage egg_hatcher:temp ui.value.unit set value "s"
execute if data storage egg_hatcher:temp ui.entry{format:"percent"} run data modify storage egg_hatcher:temp ui.value.unit set value "%"
$data modify storage egg_hatcher:temp ui.value.current set from storage egg_hatcher:config $(path)
function egg_hatcher:config/ui/prepare_reset with storage egg_hatcher:temp ui.value
execute if data storage egg_hatcher:temp ui.value{format:"string"} run function egg_hatcher:config/ui/render {source:"ui.value",renderer:"line/value_string"}
execute unless data storage egg_hatcher:temp ui.value{format:"string"} run function egg_hatcher:config/ui/render {source:"ui.value",renderer:"line/value_number"}
