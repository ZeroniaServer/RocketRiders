# click sound
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SignsRefreshed] run playsound ui.button.click master @a[x=0] ~ ~ ~ 1 1

# overrides
execute unless predicate game:match_components/has_overtime run return run tellraw @s {color:"dark_gray",italic:true,text:"Overtime is incompatible with this game mode."}
execute if predicate game:game_rules/disable_overtime/__forced_on run return run tellraw @s {color:"dark_gray",italic:true,text:"Overtime is incompatible with this game mode."}
execute if predicate game:game_rules/disable_overtime/__forced_off run return run tellraw @s {color:"dark_gray",italic:true,text:"Overtime is required in this game mode."}

# toggle
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SignsRefreshed,scores={refreshsigns=0}] store success score $disable_overtime config unless score $disable_overtime config matches 1
execute if score $disable_overtime config matches 0 run scoreboard players reset $disable_overtime config
execute unless predicate game:game_rules/disable_overtime/on if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SignsRefreshed] run tellraw @s ["",{bold:true,color:"white",text:"Overtime"},{bold:true,color:"green",text:" Enabled:"},{color:"gray",italic:true,text:" If a Capture the Flag Mode match lasts for 30 minutes, it runs into an overtime period where items are given twice as fast and Canopies stack to 3."}]
execute if predicate game:game_rules/disable_overtime/on if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SignsRefreshed] run tellraw @s ["",{bold:true,color:"white",text:"Overtime"},{bold:true,color:"red",text:" Disabled:"},{color:"gray",italic:true,text:" There will be no overtime period in long matches of Capture the Flag Mode."}]
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!GamemodeRefreshed] run function arenaclear:refreshoptionssigns
