# Create the scoreboard objective required for the hatch check
scoreboard objectives add egg_hatcher.temp dummy

# Initialize the config map.

# sound.id: The sound to play when an egg hatches.
# sound.category: The sound category for the hatch sound.
# sound.volume: The volume for the hatch sound.
# sound.pitch: The pitch for the hatch sound.
execute unless data storage egg_hatcher:config sound.id run data modify storage egg_hatcher:config sound.id set value "minecraft:block.sniffer_egg.hatch"
execute unless data storage egg_hatcher:config sound.category run data modify storage egg_hatcher:config sound.category set value "neutral"
execute unless data storage egg_hatcher:config sound.volume run data modify storage egg_hatcher:config sound.volume set value 1f
execute unless data storage egg_hatcher:config sound.pitch run data modify storage egg_hatcher:config sound.pitch set value 1.5f

# density.limit: Max chickens allowed in range.
# density.range: The radius to check for chickens.
execute unless data storage egg_hatcher:config density.limit run data modify storage egg_hatcher:config density.limit set value 50
execute unless data storage egg_hatcher:config density.range run data modify storage egg_hatcher:config density.range set value 20d

# chance: The percentage chance (0-100) for an egg to hatch.
execute unless data storage egg_hatcher:config chance run data modify storage egg_hatcher:config chance set value 80b

# variants: Maps item IDs to chicken variants.
execute unless data storage egg_hatcher:config variants run data modify storage egg_hatcher:config variants set value {"minecraft:blue_egg":"minecraft:cold","minecraft:brown_egg":"minecraft:warm"}

# debug: Enable debug messages (0b = off, 1b = on).
execute unless data storage egg_hatcher:config debug run data modify storage egg_hatcher:config debug set value 0b