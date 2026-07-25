# Earlier configs stored sound settings directly under hatchable:config sound.
execute if data storage hatchable:config sound unless data storage hatchable:config feedback.hatch.sound.id run data modify storage hatchable:config feedback.hatch.sound set from storage hatchable:config sound
data remove storage hatchable:config sound
# The removed variants object has no migration or compatibility fallback.
data remove storage hatchable:config variants
