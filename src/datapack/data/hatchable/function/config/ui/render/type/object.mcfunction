execute if data storage hatchable:temp ui.entry{format:"feedback"} run function hatchable:config/ui/feedback_row with storage hatchable:temp ui.entry
execute if data storage hatchable:temp ui.entry{format:"feedback"} run return 0
data modify storage hatchable:temp ui.object set from storage hatchable:temp ui.entry
function hatchable:config/ui/prepare_reset_with_default with storage hatchable:temp ui.object
function hatchable:config/ui/render {source:"ui.object",renderer:"line/object"}
