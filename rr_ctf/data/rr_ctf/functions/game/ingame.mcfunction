#leave midgame
execute as @s[tag=!SMActive] run function rr_ctf:game/leavemidgame

#item RNG and spawnpoints
tag @s add givenCanopy
scoreboard players add @s RandomItem 1
execute if score @s[tag=!Minute] RandomItem = @s[tag=!Minute] MaxItemTime run function rr_ctf:items/giverandom
execute if score @s[tag=!Minute] RandomItem > @s[tag=!Minute] MaxItemTime run scoreboard players set @s RandomItem 1
spawnpoint @a[team=Blue] 12 64 -66 0
spawnpoint @a[team=Yellow] 12 64 66 -180
execute if entity @s[tag=Minute] run function rr_ctf:items/minutemix

#endstone regeneration
execute as @e[tag=airDetectBlue,type=area_effect_cloud] at @s run function rr_ctf:everytick/airdetectblue
execute as @e[tag=airDetectYellow,type=area_effect_cloud] at @s run function rr_ctf:everytick/airdetectyellow

#flag logic
function rr_ctf:everytick/flag
scoreboard objectives setdisplay sidebar.team.gold FlagDisp
scoreboard objectives setdisplay sidebar.team.blue FlagDisp
scoreboard objectives setdisplay sidebar.team.dark_gray FlagDisp

#custom prevention message
execute as @a[tag=MissiMSG,tag=!voidMSG,tag=!roofMSG,tag=!antigriefMSG] run tellraw @s ["",{"text":"Unable to spawn missile inside of obsidian or bedrock.","color":"red"}]
tag @a[tag=MissiMSG] remove MissiMSG
tag @a[tag=roofMSG] remove roofMSG
tag @a[tag=voidMSG] remove voidMSG
tag @a[tag=antigriefMSG] remove antigriefMSG

#fill bedrock
fill -15 64 67 39 64 67 bedrock
fill -15 33 67 39 33 67 bedrock
fill -15 64 -67 39 64 -67 bedrock
fill -15 33 -67 39 33 -67 bedrock
fill -15 63 67 -15 34 67 bedrock
fill 39 63 67 39 34 67 bedrock
fill -15 63 -67 -15 34 -67 bedrock
fill 39 63 -67 39 34 -67 bedrock
fill 10 64 67 14 64 67 obsidian
fill 10 64 -67 14 64 -67 obsidian
execute unless blocks 39 64 68 -15 64 69 39 183 68 all run fill 39 64 68 -15 64 69 bedrock
execute unless blocks 39 64 -68 -15 64 -69 39 183 -68 all run fill 39 64 -68 -15 64 -69 bedrock

#win
execute if score Blue: FlagDisp matches 2 run function game:winblue
execute if score Yellow: FlagDisp matches 2 run function game:winyellow