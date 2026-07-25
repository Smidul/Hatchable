schedule function hatchable:schedule 1s replace
execute as @e[predicate=hatchable:can_hatch] at @s run function hatchable:internal/select
