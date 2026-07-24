schedule function egg_hatcher:schedule 1s replace
execute as @e[predicate=egg_hatcher:can_hatch] at @s run function egg_hatcher:internal/check/age
