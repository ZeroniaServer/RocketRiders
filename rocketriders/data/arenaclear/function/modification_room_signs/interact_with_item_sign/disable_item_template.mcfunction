# arguments: item_id, category_id, plural_item_name

# click sound
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SignsRefreshed] run playsound ui.button.click master @a[x=0] ~ ~ ~ 1 1

# overrides
execute if predicate game:match_components/duel_settings_locked run return run tellraw @s {color:"dark_gray",italic:true,text:"Item settings are not adjustable in this game mode."}
$execute if predicate game:game_rules/disable_item_category/$(category_id)/__forced_on run return run tellraw @s {color:"dark_gray",italic:true,text:"Items from this category are incompatible with this game mode."}
$execute if predicate game:game_rules/disable_item_category/$(category_id)/on run return run tellraw @s {color:"dark_gray",italic:true,text:"Items from this category are turned off."}
$execute if predicate game:game_rules/disable_item/$(item_id)/__forced_on run return run tellraw @s {color:"dark_gray",italic:true,text:"$(plural_item_name) are incompatible with this game mode."}
$execute if predicate game:game_rules/disable_item/$(item_id)/__forced_off run return run tellraw @s {color:"dark_gray",italic:true,text:"$(plural_item_name) are required in this game mode."}

# toggle
$execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SignsRefreshed,scores={refreshsigns=0}] store success score $disable_item/$(item_id) config unless score $disable_item/$(item_id) config matches 1
$execute if score $disable_item/$(item_id) config matches 0 run scoreboard players reset $disable_item/$(item_id) config
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!GamemodeRefreshed] run function arenaclear:refreshitemsigns
