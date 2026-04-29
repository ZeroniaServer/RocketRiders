# click sound
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SignsRefreshed] run playsound ui.button.click master @a[x=0] ~ ~ ~ 1 1

# overrides
execute if predicate game:feature_flags/1_4_0_update/on if predicate custom:team/any_arena_team run return run tellraw @s {"text":"You cannot modify Tie Window while on a team","color":"red"}
execute if predicate game:feature_flags/1_4_0_update/on if predicate game:match_components/duel_settings_locked run return run tellraw @s {"text":"Game Rules are not adjustable in this game mode.","color":"dark_gray","italic":true}
execute if predicate game:feature_flags/1_4_0_update/on if predicate game:game_rules/tie_window_length/__locked run return run tellraw @s {"text":"Tie Window is not adjustable in this game mode.","color":"dark_gray","italic":true}
execute unless predicate game:feature_flags/1_4_0_update/on if predicate game:match_components/duel_settings_locked run return run tellraw @s {"text":"Game Rules are not adjustable in this game mode.","color":"dark_gray","italic":true}
execute unless predicate game:feature_flags/1_4_0_update/on if predicate game:game_rules/tie_window_length/__locked run return run tellraw @s {"text":"Tiebreakers are not adjustable in this game mode.","color":"dark_gray","italic":true}

# open dialog
execute if predicate game:feature_flags/1_4_0_update/on run return run function arenaclear:tie_window_length/show_dialog

# toggle (pre 1_4_0_update)
execute store success score $do_toggle var if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SignsRefreshed,scores={refreshsigns=0}]
execute if score $do_toggle var matches 1 store success score $tie_window_length config unless score $tie_window_length config matches -1
execute if score $do_toggle var matches 1 if score $tie_window_length config matches 1 run scoreboard players set $tie_window_length config -1
execute if score $tie_window_length config matches 0 run scoreboard players reset $tie_window_length config
execute if predicate game:game_rules/tie_window_length/non_zero run tellraw @s ["",{bold:true,color:"white",text:"Tiebreakers"},{bold:true,color:"green",text:" Enabled:"},{color:"gray",italic:true,text:" Ties may occur if both portals are broken within 5 seconds of each other. This starts a tiebreaker period where the portals are restored and items are given twice as fast. Multiple ties may occur in one match, and the match only ends when one team's portal remains."}]
execute unless predicate game:game_rules/tie_window_length/non_zero run tellraw @s ["",{bold:true,color:"white",text:"Tiebreakers"},{bold:true,color:"red",text:" Disabled:"},{color:"gray",italic:true,text:" Only the first team to destroy the enemy portal can win the match."}]
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!GamemodeRefreshed] run function arenaclear:refreshoptionssigns
