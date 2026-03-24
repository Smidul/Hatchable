execute if data storage egg_hatcher:config {debug: 1b} run tellraw @a [{"text":"[Egg Hatcher] ","color":"gold"},{"text":"[","color":"dark_gray"},{"nbt":"Item.id","entity":"@s","color":"green"},{"text":"] ","color":"dark_gray"},{"text":"Resolving variant...","color":"blue"}]

# 1. Set default
data modify storage egg_hatcher:macro variant set value "minecraft:temperate"

# 2. Try to overwrite the default variant using the config map and the Item ID.
# If the ID doesn't exist in the map, this line does nothing, keeping the default.
$data modify storage egg_hatcher:macro variant set from storage egg_hatcher:config variants.$(id)

# 3. Set component overwrite
data modify storage egg_hatcher:macro variant set from entity @s Item.components."minecraft:chicken/variant"

# 4. Load the sound settings on macro storage
data modify storage egg_hatcher:macro sound_id set from storage egg_hatcher:config sound.id
data modify storage egg_hatcher:macro sound_category set from storage egg_hatcher:config sound.category
data modify storage egg_hatcher:macro sound_volume set from storage egg_hatcher:config sound.volume
data modify storage egg_hatcher:macro sound_pitch set from storage egg_hatcher:config sound.pitch

# 5. Spawn
function egg_hatcher:internal/spawn_chicken with storage egg_hatcher:macro