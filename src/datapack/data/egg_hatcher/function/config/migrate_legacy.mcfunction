# v1.0.x stored sound settings directly under egg_hatcher:config sound.
execute if data storage egg_hatcher:config sound unless data storage egg_hatcher:config feedback.hatch.sound.id run data modify storage egg_hatcher:config feedback.hatch.sound set from storage egg_hatcher:config sound
data remove storage egg_hatcher:config sound
