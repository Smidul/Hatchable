data modify storage egg_hatcher:temp ui.feedback set from storage egg_hatcher:temp ui.entry
data modify storage egg_hatcher:temp ui.feedback merge value {particles_symbol:"✖",particles_color:"red",sound_symbol:"✖",sound_color:"red",default_particles_state:"Disabled",default_particles_color:"red",default_sound_state:"Disabled",default_sound_color:"red"}
$data modify storage egg_hatcher:temp ui.feedback.particles_description set from storage egg_hatcher:definitions translations.$(path).particles.description
$data modify storage egg_hatcher:temp ui.feedback.sound_description set from storage egg_hatcher:definitions translations.$(path).sound.enabled.description
$execute store result score #toggle egg_hatcher.temp run data get storage egg_hatcher:config $(path).particles
execute unless score #toggle egg_hatcher.temp matches 0 run data modify storage egg_hatcher:temp ui.feedback.particles_symbol set value "✔"
execute unless score #toggle egg_hatcher.temp matches 0 run data modify storage egg_hatcher:temp ui.feedback.particles_color set value "green"
$execute store result score #toggle egg_hatcher.temp run data get storage egg_hatcher:config $(path).sound.enabled
execute unless score #toggle egg_hatcher.temp matches 0 run data modify storage egg_hatcher:temp ui.feedback.sound_symbol set value "✔"
execute unless score #toggle egg_hatcher.temp matches 0 run data modify storage egg_hatcher:temp ui.feedback.sound_color set value "green"
$execute store result score #default egg_hatcher.temp run data get storage egg_hatcher:defaults values.$(path).particles
execute unless score #default egg_hatcher.temp matches 0 run data modify storage egg_hatcher:temp ui.feedback.default_particles_state set value "Enabled"
execute unless score #default egg_hatcher.temp matches 0 run data modify storage egg_hatcher:temp ui.feedback.default_particles_color set value "green"
$execute store result score #default egg_hatcher.temp run data get storage egg_hatcher:defaults values.$(path).sound.enabled
execute unless score #default egg_hatcher.temp matches 0 run data modify storage egg_hatcher:temp ui.feedback.default_sound_state set value "Enabled"
execute unless score #default egg_hatcher.temp matches 0 run data modify storage egg_hatcher:temp ui.feedback.default_sound_color set value "green"
function egg_hatcher:config/ui/prepare_reset with storage egg_hatcher:temp ui.feedback
function egg_hatcher:config/ui/render {source:"ui.feedback",renderer:"line/feedback"}
