#leave midgame
function game:leavemidgame

#general
function rr_crusade:items/antidupe
function rr_crusade:items/spawnitems

#Item RNG
scoreboard players add @s RandomItem 1
execute if score @s[tag=!Minute] RandomItem = @s[tag=!Minute] MaxItemTime run function items:giverandom
execute if score @s[tag=!Minute] RandomItem > @s[tag=!Minute] MaxItemTime run scoreboard players set @s RandomItem 1
execute if entity @s[tag=Minute] run function items:minutemix

#custom prevention message
execute as @a[tag=preventionMSG] run tellraw @s ["",{"text":"Unable to spawn missile inside of obsidian or bedrock.","color":"red"}]
tag @a[tag=preventionMSG] remove preventionMSG

#Set banners
#Yellow A
execute unless block 0 64 37 minecraft:yellow_banner run setblock 0 64 37 minecraft:yellow_banner[rotation=8]{Patterns:[{Pattern:ms,Color:1},{Pattern:ls,Color:1},{Pattern:rs,Color:1},{Pattern:ts,Color:1},{Pattern:bo,Color:4}]}
execute unless block 0 63 40 minecraft:yellow_wall_banner run setblock 0 63 40 minecraft:yellow_wall_banner[facing=south]{Base:4,Patterns:[{Pattern:ms,Color:1},{Pattern:ls,Color:1},{Pattern:rs,Color:1},{Pattern:ts,Color:1},{Pattern:bo,Color:4}]}
#Yellow B
execute unless block 24 64 37 minecraft:yellow_banner run setblock 24 64 37 minecraft:yellow_banner[rotation=8]{Patterns:[{Pattern:rs,Color:1},{Pattern:bs,Color:1},{Pattern:ts,Color:1},{Pattern:cbo,Color:4},{Pattern:ls,Color:1},{Pattern:ms,Color:1},{Pattern:bo,Color:4}]}
execute unless block 24 63 40 minecraft:yellow_wall_banner run setblock 24 63 40 minecraft:yellow_wall_banner[facing=south]{Patterns:[{Pattern:rs,Color:1},{Pattern:bs,Color:1},{Pattern:ts,Color:1},{Pattern:cbo,Color:4},{Pattern:ls,Color:1},{Pattern:ms,Color:1},{Pattern:bo,Color:4}]}
#Blue A
execute unless block 24 64 -33 minecraft:blue_banner run setblock 24 64 -33 minecraft:blue_banner[rotation=0]{Patterns:[{Pattern:ms,Color:9},{Pattern:ls,Color:9},{Pattern:rs,Color:9},{Pattern:ts,Color:9},{Pattern:bo,Color:11}]}
execute unless block 24 63 -36 minecraft:blue_wall_banner run setblock 24 63 -36 minecraft:blue_wall_banner[facing=north]{Patterns:[{Pattern:ms,Color:9},{Pattern:ls,Color:9},{Pattern:rs,Color:9},{Pattern:ts,Color:9},{Pattern:bo,Color:11}]}
#Blue B
execute unless block 0 64 -33 minecraft:blue_banner run setblock 0 64 -33 minecraft:blue_banner[rotation=0]{Patterns:[{Pattern:rs,Color:9},{Pattern:bs,Color:9},{Pattern:ts,Color:9},{Pattern:cbo,Color:11},{Pattern:ls,Color:9},{Pattern:ms,Color:9},{Pattern:bo,Color:11}]}
execute unless block 0 63 -36 minecraft:blue_wall_banner run setblock 0 63 -36 minecraft:blue_wall_banner[facing=north]{Patterns:[{Pattern:rs,Color:9},{Pattern:bs,Color:9},{Pattern:ts,Color:9},{Pattern:cbo,Color:11},{Pattern:ls,Color:9},{Pattern:ms,Color:9},{Pattern:bo,Color:11}]}

#Spawnpoints
execute as @a[team=Blue,nbt=!{SpawnX:12,SpawnY:64,SpawnZ:-66}] run spawnpoint @s 12 64 -66 0
execute as @a[team=Yellow,nbt=!{SpawnX:12,SpawnY:64,SpawnZ:66}] run spawnpoint @s 12 64 66 -180

#> Crystal health & bossbars
bossbar set rr_crusade:blue players @a[team=!Lobby]
bossbar set rr_crusade:yellow players @a[team=!Lobby]
execute store result bossbar rr_crusade:blue value run scoreboard players get $BlueShield crusadehp
execute store result bossbar rr_crusade:yellow value run scoreboard players get $YellowShield crusadehp

execute if score $BlueShield crusadehp matches 1.. if score $CBA crusadehp matches 1.. unless entity @e[type=end_crystal,tag=CrusadeBlueA] run function rr_crusade:game/restorecba
execute if score $BlueShield crusadehp matches 1.. if score $CBB crusadehp matches 1.. unless entity @e[type=end_crystal,tag=CrusadeBlueB] run function rr_crusade:game/restorecbb
execute if score $YellowShield crusadehp matches 1.. if score $CYA crusadehp matches 1.. unless entity @e[type=end_crystal,tag=CrusadeYellowA] run function rr_crusade:game/restorecya
execute if score $YellowShield crusadehp matches 1.. if score $CYB crusadehp matches 1.. unless entity @e[type=end_crystal,tag=CrusadeYellowB] run function rr_crusade:game/restorecyb

#> Win condition
execute if score $BlueShield crusadehp matches -1000..0 unless block 12 52 -59 nether_portal run function rr_crusade:game/winyellow
execute if score $YellowShield crusadehp matches -1000..0 unless block 12 52 59 nether_portal run function rr_crusade:game/winblue