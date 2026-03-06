# click sound
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SignsRefreshed] run playsound ui.button.click master @a[x=0] ~ ~ ~ 1 1

# overrides
execute if predicate game:match_components/duel_settings_locked run return run tellraw @s {color:"dark_gray",italic:true,text:"Game Rules are not adjustable in this gamemode."}
execute if predicate game:game_rules/item_stacking/forced_off run return run tellraw @s {color:"dark_gray",italic:true,text:"Item Stacking is incompatible with this gamemode."}
execute if predicate game:game_rules/item_stacking/forced_on run return run tellraw @s {color:"dark_gray",italic:true,text:"Item Stacking required in this gamemode."}

# toggle
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SignsRefreshed,scores={refreshsigns=0}] store success score $item_stacking config unless score $item_stacking config matches 1
execute if score $item_stacking config matches 0 run scoreboard players reset $item_stacking config
execute if predicate game:game_rules/item_stacking/on run tellraw @s ["",{bold:true,color:"white",text:"Item Stacking"},{bold:true,color:"green",text:" Enabled:"},{color:"gray",italic:true,text:" You can have more than one of any item."}]
execute unless predicate game:game_rules/item_stacking/on run tellraw @s ["",{bold:true,color:"white",text:"Item Stacking"},{bold:true,color:"red",text:" Disabled:"},{color:"gray",italic:true,text:" You can't have more than one of any item, besides arrows. (Exceptions may be made for certain gamemodes/modifiers.)"}]
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!GamemodeRefreshed] run function arenaclear:refreshoptionssigns
