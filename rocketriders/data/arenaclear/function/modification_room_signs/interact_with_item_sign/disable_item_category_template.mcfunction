# arguments: category_id, category_name

# click sound
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SignsRefreshed] run playsound ui.button.click master @a[x=0] ~ ~ ~ 1 1

# overrides
execute if predicate game:gamemode_components/duel_settings_locked run return run tellraw @s {color:"dark_gray",italic:true,text:"Item settings are not adjustable in this gamemode."}
$execute if predicate game:game_rules/disable_item_category/$(category_id)/forced_on run return run tellraw @s {color:"dark_gray",italic:true,text:"$(category_name) items are incompatible with this gamemode."}
$execute if predicate game:game_rules/disable_item_category/$(category_id)/forced_off run return run tellraw @s {color:"dark_gray",italic:true,text:"$(category_name) items are required in this gamemode."}
#$execute if predicate game:item_pool_meta/all_$(category_id)_disabled run return run tellraw @s {color:"dark_gray",italic:true,text:"This category is locked because all $(category_name) are disabled."}

# toggle
$execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SignsRefreshed,scores={refreshsigns=0}] store success score $disable_item_category/$(category_id) config unless score $disable_item_category/$(category_id) config matches 1
$execute if score $disable_item_category/$(category_id) config matches 0 run scoreboard players reset $disable_item_category/$(category_id) config
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!GamemodeRefreshed] run function arenaclear:refreshitemsigns
