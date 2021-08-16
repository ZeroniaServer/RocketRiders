#leave midgame
execute if entity @s[tag=!SMActive] run function rr_ctf:game/leavemidgame

#Item RNG
tag @s add givenCanopy
scoreboard players add @s RandomItem 1
execute if score @s[tag=!Minute] RandomItem = @s[tag=!Minute] MaxItemTime run function rr_ctf:items/giverandom
execute if score @s[tag=!Minute] RandomItem > @s[tag=!Minute] MaxItemTime run scoreboard players set @s RandomItem 1
execute if entity @s[tag=Minute] run function rr_ctf:items/minutemix

#Spawnpoints
execute as @a[team=Blue,nbt=!{SpawnX:12,SpawnY:64,SpawnZ:-66}] run spawnpoint @s 12 64 -66 0
execute as @a[team=Yellow,nbt=!{SpawnX:12,SpawnY:64,SpawnZ:66}] run spawnpoint @s 12 64 66 -180

#endstone regeneration
execute as @e[type=marker,tag=airDetectBlue] at @s run function rr_ctf:everytick/airdetectblue
execute as @e[type=marker,tag=airDetectYellow] at @s run function rr_ctf:everytick/airdetectyellow

#Overtime sudden death
execute as @e[type=armor_stand,tag=Selection,scores={gametime=36000},tag=doTying] run tag @s add CTFOvertime
execute as @e[type=armor_stand,tag=Selection,tag=CTFOvertime] run function rr_ctf:everytick/overtime

#flag logic
function rr_ctf:everytick/flag
scoreboard objectives setdisplay sidebar.team.gold FlagDisp
scoreboard objectives setdisplay sidebar.team.blue FlagDisp
scoreboard objectives setdisplay sidebar.team.dark_gray FlagDisp

#custom prevention message
execute as @a[tag=preventionMSG] run tellraw @s ["",{"text":"Unable to spawn missile inside of obsidian or bedrock.","color":"red"}]
tag @a[tag=preventionMSG] remove preventionMSG

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