# click sound
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SignsRefreshed] run playsound ui.button.click master @a[x=0] ~ ~ ~ 1 1

# overrides
execute if predicate game:match_components/duel_settings_locked run return run tellraw @s {color:"dark_gray",italic:true,text:"Game Rules are not adjustable in this gamemode."}
execute if predicate game:modifiers/instant_tnt_explosions/on run return run tellraw @s {color:"dark_gray",italic:true,text:"TNT Cannoning is not adjustable with the Instant TNT modifier enabled."}
execute if predicate game:game_rules/disable_cannoning/forced_on run return run tellraw @s {color:"dark_gray",italic:true,text:"TNT Cannoning is incompatible with this gamemode."}
execute if predicate game:game_rules/disable_cannoning/forced_off run return run tellraw @s {color:"dark_gray",italic:true,text:"TNT Cannoning required in this gamemode."}

# toggle
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SignsRefreshed,scores={refreshsigns=0}] store success score $disable_cannoning config unless score $disable_cannoning config matches 1
execute if score $disable_cannoning config matches 0 run scoreboard players reset $disable_cannoning config
execute unless predicate game:game_rules/disable_cannoning/on run tellraw @s ["",{bold:true,color:"white",text:"TNT Cannoning"},{bold:true,color:"green",text:" Enabled:"},{color:"gray",italic:true,text:" TNT will have its maximum speed capped in order to prevent cannoning."}]
execute if predicate game:game_rules/disable_cannoning/on run tellraw @s ["",{bold:true,color:"white",text:"TNT Cannoning"},{bold:true,color:"red",text:" Disabled:"},{color:"gray",italic:true,text:" TNT will not have its maximum speed capped."}]
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!GamemodeRefreshed] run function arenaclear:refreshoptionssigns
