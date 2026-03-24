# Run every second.
schedule function egg_hatcher:schedule 1s

# Only check items that are eggs. We do NOT check Age here anymore.
execute as @e[predicate=egg_hatcher:can_hatch] at @s run function egg_hatcher:internal/check/age