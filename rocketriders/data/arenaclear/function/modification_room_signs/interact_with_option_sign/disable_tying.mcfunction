# click sound
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SignsRefreshed] run playsound ui.button.click master @a[x=0] ~ ~ ~ 1 1

# overrides
execute if predicate game:gamemode_components/duel_settings_locked run return run tellraw @s {color:"dark_gray",italic:true,text:"Game Rules are not adjustable in this gamemode."}
execute if predicate game:game_rules/disable_tying/forced_on if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=ctfEnabled] run return run tellraw @s {color:"dark_gray",italic:true,text:"Overtime is incompatible with this gamemode."}
execute if predicate game:game_rules/disable_tying/forced_on run return run tellraw @s {color:"dark_gray",italic:true,text:"Tiebreakers are incompatible with this gamemode."}
execute if predicate game:game_rules/disable_tying/forced_off if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=ctfEnabled] run return run tellraw @s {color:"dark_gray",italic:true,text:"Overtime is required in this gamemode."}
execute if predicate game:game_rules/disable_tying/forced_off run return run tellraw @s {color:"dark_gray",italic:true,text:"Tiebreakers are required in this gamemode."}

# toggle
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SignsRefreshed,scores={refreshsigns=0}] store success score $disable_tying config unless score $disable_tying config matches 1
execute if score $disable_tying config matches 0 run scoreboard players reset $disable_tying config
execute unless predicate game:game_rules/disable_tying/on if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SignsRefreshed,tag=!ctfEnabled] run tellraw @s ["",{bold:true,color:"white",text:"Tiebreakers"},{bold:true,color:"green",text:" Enabled:"},{color:"gray",italic:true,text:" Ties may occur if both portals are broken within 5 seconds of each other. This starts a tiebreaker period where the portals are restored and items are given twice as fast. Multiple ties may occur in one match, and the match only ends when one team's portal remains."}]
execute unless predicate game:game_rules/disable_tying/on if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SignsRefreshed,tag=ctfEnabled] run tellraw @s ["",{bold:true,color:"white",text:"Overtime"},{bold:true,color:"green",text:" Enabled:"},{color:"gray",italic:true,text:" If a Capture the Flag Mode game lasts for 30 minutes, it runs into an overtime period where items are given twice as fast and Canopies stack to 3."}]
execute if predicate game:game_rules/disable_tying/on if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SignsRefreshed,tag=!ctfEnabled] run tellraw @s ["",{bold:true,color:"white",text:"Tiebreakers"},{bold:true,color:"red",text:" Disabled:"},{color:"gray",italic:true,text:" Only the first team to destroy the enemy portal can win the match."}]
execute if predicate game:game_rules/disable_tying/on if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SignsRefreshed,tag=ctfEnabled] run tellraw @s ["",{bold:true,color:"white",text:"Overtime"},{bold:true,color:"red",text:" Disabled:"},{color:"gray",italic:true,text:" There will be no overtime period in long games of Capture the Flag Mode."}]
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!GamemodeRefreshed] run function arenaclear:refreshoptionssigns

