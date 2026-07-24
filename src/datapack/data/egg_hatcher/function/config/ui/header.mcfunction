function egg_hatcher:config/ui/prepare_header_reset with storage egg_hatcher:temp ui.header
execute if data storage egg_hatcher:temp ui.header{screen:"general"} run function egg_hatcher:config/ui/render {source:"ui.header",renderer:"header/general"}
execute if data storage egg_hatcher:temp ui.header{screen:"page"} run function egg_hatcher:config/ui/render {source:"ui.header",renderer:"header/page"}
execute if data storage egg_hatcher:temp ui.header{screen:"sound"} run function egg_hatcher:config/ui/render {source:"ui.header",renderer:"header/sound"}
