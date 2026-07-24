$data modify storage egg_hatcher:temp ui.entry merge from storage egg_hatcher:definitions translations.$(path)
$function egg_hatcher:config/ui/render/type/$(type) with storage egg_hatcher:temp ui.entry
