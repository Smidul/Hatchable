function hatchable:debug/log {category:"hatching",category_label:"Hatching",level:"Trace",level_color:"gray",message:"Preparing the configured hatch entity."}
data modify storage hatchable:macro entity set from storage hatchable:temp hatch_selected.entity
data modify storage hatchable:macro data set value {}

# Inherit minecraft:entity_data only when its entity id matches the final resolved entity.
execute if data storage hatchable:temp hatch_item_entity run function hatchable:internal/components/apply_entity_data

# Inherit entity-specific item components for the final resolved entity.
function hatchable:internal/components/inherit
# Composed mapping entity data overrides inherited component data.
execute if data storage hatchable:temp hatch_selected.entity_data run data modify storage hatchable:macro data merge from storage hatchable:temp hatch_selected.entity_data
# Entity Age is resolved separately so its Force option always has unambiguous precedence.
data modify storage hatchable:macro data.Age set from storage hatchable:temp hatch_resolved.entity_age

data modify storage hatchable:macro sound_id set from storage hatchable:config feedback.hatch.sound.id
data modify storage hatchable:macro sound_category set from storage hatchable:config feedback.hatch.sound.category
data modify storage hatchable:macro sound_volume set from storage hatchable:config feedback.hatch.sound.volume
data modify storage hatchable:macro sound_pitch set from storage hatchable:config feedback.hatch.sound.pitch
function hatchable:internal/spawn_entity with storage hatchable:macro
