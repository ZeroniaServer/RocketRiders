# click sound
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SignsRefreshed] run playsound ui.button.click master @a[x=0] ~ ~ ~ 1 1

# toggle
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SignsRefreshed,scores={refreshsigns=0}] store success score $show_extra_player_credits config unless score $show_extra_player_credits config matches 1
execute if score $show_extra_player_credits config matches 0 run scoreboard players reset $show_extra_player_credits config
execute if predicate game:world_options/show_extra_player_credits/on run function lobby:credits/initialize
execute unless predicate game:world_options/show_extra_player_credits/on run function lobby:credits/stop
execute if predicate game:world_options/show_extra_player_credits/on run tellraw @s ["",{bold:true,color:"white",text:"Player Credits"},{bold:true,color:"green",text:" Enabled:"},{color:"gray",italic:true,text:" Credits armor stands are visible in the Lobby. (This can be laggy.)"}]
execute unless predicate game:world_options/show_extra_player_credits/on run tellraw @s ["",{bold:true,color:"white",text:"Player Credits"},{bold:true,color:"red",text:" Disabled:"},{color:"gray",italic:true,text:" Credits armor stands are not visible in the Lobby."}]
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!GamemodeRefreshed] run function arenaclear:refreshoptionssigns
