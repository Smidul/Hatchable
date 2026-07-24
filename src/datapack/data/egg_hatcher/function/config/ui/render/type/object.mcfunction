execute if data storage egg_hatcher:temp ui.entry{format:"feedback"} run function egg_hatcher:config/ui/feedback_row with storage egg_hatcher:temp ui.entry
execute if data storage egg_hatcher:temp ui.entry{format:"feedback"} run return 0
data modify storage egg_hatcher:temp ui.object set from storage egg_hatcher:temp ui.entry
function egg_hatcher:config/ui/prepare_reset with storage egg_hatcher:temp ui.object
function egg_hatcher:config/ui/render {source:"ui.object",renderer:"line/object"}
