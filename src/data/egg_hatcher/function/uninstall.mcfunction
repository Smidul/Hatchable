schedule clear egg_hatcher:schedule
scoreboard objectives remove egg_hatcher.temp

# Clean up config storage
data remove storage egg_hatcher:config sound
data remove storage egg_hatcher:config chance
data remove storage egg_hatcher:config density
data remove storage egg_hatcher:config variants
data remove storage egg_hatcher:config debug

# Clean up macro storage
data remove storage egg_hatcher:macro id
data remove storage egg_hatcher:macro variant
data remove storage egg_hatcher:macro density_limit
data remove storage egg_hatcher:macro density_range