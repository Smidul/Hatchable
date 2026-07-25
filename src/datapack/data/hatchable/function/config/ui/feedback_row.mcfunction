data modify storage hatchable:temp ui.feedback set from storage hatchable:temp ui.entry
data modify storage hatchable:temp ui.feedback merge value {particles_symbol:"✖",particles_color:"red",sound_symbol:"✖",sound_color:"red",default_particles_state:"Disabled",default_particles_color:"red",default_sound_state:"Disabled",default_sound_color:"red"}
$data modify storage hatchable:temp ui.feedback.particles_description set from storage hatchable:definitions translations.$(path).particles.description
$data modify storage hatchable:temp ui.feedback.sound_description set from storage hatchable:definitions translations.$(path).sound.enabled.description
$execute store result score #toggle hatchable.temp run data get storage hatchable:config $(path).particles
execute unless score #toggle hatchable.temp matches 0 run data modify storage hatchable:temp ui.feedback.particles_symbol set value "✔"
execute unless score #toggle hatchable.temp matches 0 run data modify storage hatchable:temp ui.feedback.particles_color set value "green"
$execute store result score #toggle hatchable.temp run data get storage hatchable:config $(path).sound.enabled
execute unless score #toggle hatchable.temp matches 0 run data modify storage hatchable:temp ui.feedback.sound_symbol set value "✔"
execute unless score #toggle hatchable.temp matches 0 run data modify storage hatchable:temp ui.feedback.sound_color set value "green"
$execute store result score #default hatchable.temp run data get storage hatchable:defaults values.$(path).particles
execute unless score #default hatchable.temp matches 0 run data modify storage hatchable:temp ui.feedback.default_particles_state set value "Enabled"
execute unless score #default hatchable.temp matches 0 run data modify storage hatchable:temp ui.feedback.default_particles_color set value "green"
$execute store result score #default hatchable.temp run data get storage hatchable:defaults values.$(path).sound.enabled
execute unless score #default hatchable.temp matches 0 run data modify storage hatchable:temp ui.feedback.default_sound_state set value "Enabled"
execute unless score #default hatchable.temp matches 0 run data modify storage hatchable:temp ui.feedback.default_sound_color set value "green"
function hatchable:config/ui/prepare_reset with storage hatchable:temp ui.feedback
execute if score #resetActive hatchable.temp matches 1.. run function hatchable:config/ui/reset/feedback/active with storage hatchable:temp ui.feedback
execute unless score #resetActive hatchable.temp matches 1.. run function hatchable:config/ui/reset/feedback/inactive with storage hatchable:temp ui.feedback
function hatchable:config/ui/render {source:"ui.feedback",renderer:"line/feedback"}
