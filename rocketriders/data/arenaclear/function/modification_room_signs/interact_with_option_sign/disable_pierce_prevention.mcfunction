# click sound
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SignsRefreshed] run playsound ui.button.click master @a[x=0] ~ ~ ~ 1 1

# overrides
execute if predicate game:gamemode_components/duel_settings_locked run return run tellraw @s {color:"dark_gray",italic:true,text:"Game Rules are not adjustable in this gamemode."}
execute if predicate game:game_rules/disable_pierce_prevention/forced_on run return run tellraw @s {color:"dark_gray",italic:true,text:"Pierce Prevention is incompatible with this gamemode."}
execute if predicate game:game_rules/disable_pierce_prevention/forced_off run return run tellraw @s {color:"dark_gray",italic:true,text:"Pierce Prevention required in this gamemode."}

# toggle
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SignsRefreshed,scores={refreshsigns=0}] store success score $disable_pierce_prevention config unless score $disable_pierce_prevention config matches 1
execute if score $disable_pierce_prevention config matches 0 run scoreboard players reset $disable_pierce_prevention config
execute unless predicate game:game_rules/disable_pierce_prevention/on run tellraw @s ["",{bold:true,color:"white",text:"Pierce Prevention"},{bold:true,color:"green",text:" Enabled:"},{color:"gray",italic:true,text:" You cannot end the game by spawning missiles in enemy portals."}]
execute if predicate game:game_rules/disable_pierce_prevention/on run tellraw @s ["",{bold:true,color:"white",text:"Pierce Prevention"},{bold:true,color:"red",text:" Disabled:"},{color:"gray",italic:true,text:" You can end the game by spawning missiles in enemy portals."}]
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!GamemodeRefreshed] run function arenaclear:refreshoptionssigns
