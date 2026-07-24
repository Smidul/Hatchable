schedule clear egg_hatcher:schedule
scoreboard objectives remove egg_hatcher.temp

data remove storage egg_hatcher:config density
data remove storage egg_hatcher:config chance
data remove storage egg_hatcher:config variants
data remove storage egg_hatcher:config feedback
data remove storage egg_hatcher:config sound
data remove storage egg_hatcher:config debug
data remove storage egg_hatcher:config debug_categories

tag @a remove egg_hatcher.debug
tag @a remove egg_hatcher.debug.tracking.disabled
tag @a remove egg_hatcher.debug.checks.disabled
tag @a remove egg_hatcher.debug.hatching.disabled
tag @a remove egg_hatcher.debug.config.disabled
