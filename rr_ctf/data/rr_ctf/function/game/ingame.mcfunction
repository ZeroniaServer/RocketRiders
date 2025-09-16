#leave midgame
execute unless predicate rr:is_cubekrowd run function rr_ctf:game/leavemidgame

#Item RNG
tag @s add givenCanopy
scoreboard players add @s RandomItem 1
execute if score @s[tag=!Minute] RandomItem = @s[tag=!Minute] MaxItemTime run function rr_ctf:items/giverandom
execute if score @s[tag=!Minute] RandomItem > @s[tag=!Minute] MaxItemTime run scoreboard players set @s RandomItem 1
execute if entity @s[tag=Minute] run function rr_ctf:items/minutemix

#Spawnpoints
spawnpoint @a[x=0,team=Blue] 12 64 -66 0
spawnpoint @a[x=0,team=Yellow] 12 64 66 -180

#endstone regeneration
execute as @e[x=0,type=marker,tag=airDetectBlue,limit=1] at @s run function rr_ctf:everytick/airdetectblue
execute as @e[x=0,type=marker,tag=airDetectYellow,limit=1] at @s run function rr_ctf:everytick/airdetectyellow

#Overtime sudden death
execute if score $game_duration global matches 36000 as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=doTying] run tag @s add CTFOvertime
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=CTFOvertime] run function rr_ctf:everytick/overtime

#flag logic
function rr_ctf:everytick/flag
scoreboard objectives setdisplay sidebar.team.gold FlagDisp
scoreboard objectives setdisplay sidebar.team.blue FlagDisp
scoreboard objectives setdisplay sidebar.team.dark_gray FlagDisp
scoreboard objectives setdisplay list flag_tablist_display

#custom prevention message
execute as @a[x=0,tag=preventionMSG] run tellraw @s ["",{"text":"Unable to spawn missile inside of obsidian or bedrock.","color":"red"}]
tag @a[x=0,tag=preventionMSG] remove preventionMSG

#win
execute if score $flags_captured_by_blue global matches 2 if score $flags_captured_by_yellow global matches 2 run function game:winboth
execute if entity @s[tag=!BothWon] if score $flags_captured_by_blue global matches 2 run function game:winblue
execute if entity @s[tag=!BothWon] if score $flags_captured_by_yellow global matches 2 run function game:winyellow