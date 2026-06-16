# click sound
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SignsRefreshed] run playsound ui.button.click master @a[x=0] ~ ~ ~ 1 1

# overrides
execute if predicate game:match_components/duel_settings_locked run return run tellraw @s {color:"dark_gray",italic:true,text:"Game Rules are not adjustable in this game mode."}
execute if predicate game:game_rules/snipe_portals/__forced_off run return run tellraw @s {color:"dark_gray",italic:true,text:"Snipe Portals is incompatible with this game mode."}
execute if predicate game:game_rules/snipe_portals/__forced_on run return run tellraw @s {color:"dark_gray",italic:true,text:"Snipe Portals required in this game mode."}

# toggle
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SignsRefreshed,scores={refreshsigns=0}] store success score $snipe_portals config unless score $snipe_portals config matches 1
execute if score $snipe_portals config matches 0 run scoreboard players reset $snipe_portals config
execute if predicate game:game_rules/snipe_portals/on run tellraw @s ["",{bold:true,color:"white",text:"Snipe Portals"},{bold:true,color:"green",text:" Enabled:"},{color:"gray",italic:true,text:" Certain utilities can be used to directly snipe enemy portals."}]
execute unless predicate game:game_rules/snipe_portals/on run tellraw @s ["",{bold:true,color:"white",text:"Snipe Portals"},{bold:true,color:"red",text:" Disabled:"},{color:"gray",italic:true,text:" Certain utilities cannot be used to directly snipe enemy portals."}]
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!GamemodeRefreshed] run function arenaclear:refreshoptionssigns
