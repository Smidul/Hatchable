data modify storage egg_hatcher:temp ui.list set from storage egg_hatcher:temp ui.entry
function egg_hatcher:config/ui/prepare_reset with storage egg_hatcher:temp ui.list
function egg_hatcher:config/ui/render {source:"ui.list",renderer:"line/list"}
