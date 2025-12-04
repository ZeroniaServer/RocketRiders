# click sound
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SignsRefreshed] run playsound ui.button.click master @a[x=0] ~ ~ ~ 1 1

# overrides
execute if predicate game:gamemode_components/duel_settings_locked run return run tellraw @s {color:"dark_gray",italic:true,text:"Game Rules are not adjustable in this gamemode."}
execute if predicate game:game_rules/impact_utilities/forced_off run return run tellraw @s {color:"dark_gray",italic:true,text:"Impact Utilities is incompatible with this gamemode."}
execute if predicate game:game_rules/impact_utilities/forced_on run return run tellraw @s {color:"dark_gray",italic:true,text:"Impact Utilities required in this gamemode."}

# toggle
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SignsRefreshed,scores={refreshsigns=0}] store success score $impact_utilities config unless score $impact_utilities config matches 1
execute if score $impact_utilities config matches 0 run scoreboard players reset $impact_utilities config
execute if predicate game:game_rules/impact_utilities/on run tellraw @s ["",{bold:true,color:"white",text:"Impact Utilities"},{bold:true,color:"green",text:" Enabled:"},{color:"gray",italic:true,text:" All utilities will deploy upon colliding with blocks or players."}]
execute unless predicate game:game_rules/impact_utilities/on run tellraw @s ["",{bold:true,color:"white",text:"Impact Utilities"},{bold:true,color:"red",text:" Disabled:"},{color:"gray",italic:true,text:" Some utilities will break upon colliding with blocks or players."}]
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!GamemodeRefreshed] run function arenaclear:refreshoptionssigns
