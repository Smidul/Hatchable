execute unless data storage hatchable:temp ui.header.title_color run data modify storage hatchable:temp ui.header.title_color set value "yellow"
function hatchable:config/ui/prepare_header_reset with storage hatchable:temp ui.header
execute if data storage hatchable:temp ui.header{screen:"general"} run function hatchable:config/ui/render {source:"ui.header",renderer:"header/general"}
execute if data storage hatchable:temp ui.header{screen:"page"} run function hatchable:config/ui/render {source:"ui.header",renderer:"header/page"}
execute if data storage hatchable:temp ui.header{screen:"sound"} run function hatchable:config/ui/render {source:"ui.header",renderer:"header/sound"}
