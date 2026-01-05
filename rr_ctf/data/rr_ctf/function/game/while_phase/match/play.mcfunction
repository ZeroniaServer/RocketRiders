#Item RNG
tag @s add givenCanopy
scoreboard players add @s RandomItem 1
execute unless predicate game:modifiers/minute_mix/on if score @s RandomItem = @s MaxItemTime run function rr_ctf:items/giverandom
execute unless predicate game:modifiers/minute_mix/on if score @s RandomItem > @s MaxItemTime run scoreboard players set @s RandomItem 1
execute if predicate game:modifiers/minute_mix/on run function rr_ctf:items/minutemix

#endstone regeneration
execute as @e[x=0,type=marker,tag=airDetectBlue,limit=1] at @s run function rr_ctf:everytick/airdetectblue
execute as @e[x=0,type=marker,tag=airDetectYellow,limit=1] at @s run function rr_ctf:everytick/airdetectyellow

#Overtime sudden death
execute if score $game_duration global matches 36000 unless predicate game:game_rules/disable_tying/on run tag @s add CTFOvertime
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=CTFOvertime] run function rr_ctf:everytick/overtime

#custom prevention message
execute as @a[x=0,tag=preventionMSG] run tellraw @s ["",{"text":"Unable to spawn missile inside of obsidian or bedrock.","color":"red"}]
tag @a[x=0,tag=preventionMSG] remove preventionMSG

#win
execute if score $flags_captured_by_blue global matches 2 if score $flags_captured_by_yellow global matches 2 run function game:winboth
execute if entity @s[tag=!BothWon] if score $flags_captured_by_blue global matches 2 run function game:winblue
execute if entity @s[tag=!BothWon] if score $flags_captured_by_yellow global matches 2 run function game:winyellow