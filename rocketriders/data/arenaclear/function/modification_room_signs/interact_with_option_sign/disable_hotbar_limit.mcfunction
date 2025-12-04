# click sound
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SignsRefreshed] run playsound ui.button.click master @a[x=0] ~ ~ ~ 1 1

# overrides
execute if predicate game:gamemode_components/duel_settings_locked run return run tellraw @s {color:"dark_gray",italic:true,text:"Game Rules are not adjustable in this gamemode."}
execute if predicate game:game_rules/disable_hotbar_limit/forced_on run return run tellraw @s {color:"dark_gray",italic:true,text:"Hotbar Limit is incompatible with this gamemode."}
execute if predicate game:game_rules/disable_hotbar_limit/forced_off run return run tellraw @s {color:"dark_gray",italic:true,text:"Hotbar Limit required in this gamemode."}

# toggle
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SignsRefreshed,scores={refreshsigns=0}] store success score $disable_hotbar_limit config unless score $disable_hotbar_limit config matches 1
execute if score $disable_hotbar_limit config matches 0 run scoreboard players reset $disable_hotbar_limit config
execute unless predicate game:game_rules/disable_hotbar_limit/on run tellraw @s ["",{bold:true,color:"white",text:"Hotbar Limit"},{bold:true,color:"green",text:" Enabled:"},{color:"gray",italic:true,text:" You can't have more than eight items."}]
execute if predicate game:game_rules/disable_hotbar_limit/on run tellraw @s ["",{bold:true,color:"white",text:"Hotbar Limit"},{bold:true,color:"red",text:" Disabled:"},{color:"gray",italic:true,text:" You can have more than eight items."}]
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!GamemodeRefreshed] run function arenaclear:refreshoptionssigns
