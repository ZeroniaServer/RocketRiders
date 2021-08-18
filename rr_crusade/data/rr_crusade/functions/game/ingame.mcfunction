#leave midgame
execute if entity @s[tag=!SMActive] run function rr_crusade:game/leavemidgame

#general
function rr_crusade:items/antidupe
function rr_crusade:items/spawnitems
function everytick:icbm

#middle wall
execute as @e[type=marker,tag=crusadeWall] at @s run function rr_crusade:game/wallplacement

#regenerate glass every 30 seconds
scoreboard players add @e[type=marker,tag=crusadeWall] CmdData 1
execute as @e[type=marker,tag=crusadeWall,scores={CmdData=2400..}] run function rr_crusade:game/glassplacement
execute as @e[type=marker,tag=crusadeWall,scores={CmdData=2400..}] run scoreboard players set @s CmdData 0

#Item RNG
scoreboard players add @s RandomItem 1
execute if score @s[tag=!Minute] RandomItem = @s[tag=!Minute] MaxItemTime if entity @s[tag=!gaveFirstItem] as @a[team=!Lobby,team=!Spectator,team=!Developer,scores={crusadekit=2}] run function rr_crusade:items/util/givearrows
execute if score @s[tag=!Minute] RandomItem = @s[tag=!Minute] MaxItemTime run function rr_crusade:items/giverandom
execute if score @s[tag=!Minute] RandomItem > @s[tag=!Minute] MaxItemTime run scoreboard players set @s RandomItem 1
execute if entity @s[tag=Minute] run function rr_crusade:items/minutemix

#custom prevention message
execute as @a[tag=preventionMSG] run tellraw @s ["",{"text":"Unable to spawn missile inside of obsidian or bedrock.","color":"red"}]
tag @a[tag=preventionMSG] remove preventionMSG

#Selected kit particles
execute as @a[team=!Lobby,team=!Spectator,team=!Developer,scores={crusadekit=1}] at @s at @e[tag=KnightStand,limit=1,sort=nearest] run particle dust 0 1 0 1 ~ ~2.3 ~ 0 0 0 0.1 5
execute as @a[team=!Lobby,team=!Spectator,team=!Developer,scores={crusadekit=2}] at @s at @e[tag=ArcherStand,limit=1,sort=nearest] run particle dust 0 1 0 1 ~ ~2.3 ~ 0 0 0 0.1 5
execute as @a[team=!Lobby,team=!Spectator,team=!Developer,scores={crusadekit=3}] at @s at @e[tag=MageStand,limit=1,sort=nearest] run particle dust 0 1 0 1 ~ ~2.3 ~ 0 0 0 0.1 5

#Give knights new shields when they respawn
execute as @a[scores={crusadekit=1,deathCooldown=5}] at @s run clear @s shield
execute as @a[team=Blue,scores={crusadekit=1,deathCooldown=5}] if entity @s[nbt={Inventory:[{Slot:-106b}]}] run give @s shield{Damage:333,display:{Name:'[{"text":"Knight Shield","italic":false,"bold":true,"color":"blue"}]',Lore:['[{"translate":"A not-so-sturdy shield."}]']},BlockEntityTag:{Base:11,Patterns:[{Pattern:"flo",Color:3},{Pattern:"bo",Color:3}]}}
execute as @a[team=Yellow,scores={crusadekit=1,deathCooldown=5}] if entity @s[nbt={Inventory:[{Slot:-106b}]}] run give @s shield{Damage:333,display:{Name:'[{"text":"Knight Shield","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"translate":"A not-so-sturdy shield."}]']},BlockEntityTag:{Base:4,Patterns:[{Pattern:"flo",Color:1},{Pattern:"bo",Color:1}]}}
execute as @a[team=Blue,scores={crusadekit=1,deathCooldown=5}] unless entity @s[nbt={Inventory:[{Slot:-106b}]}] run item replace entity @s weapon.offhand with shield{Damage:333,display:{Name:'[{"text":"Knight Shield","italic":false,"bold":true,"color":"blue"}]',Lore:['[{"translate":"A not-so-sturdy shield."}]']},BlockEntityTag:{Base:11,Patterns:[{Pattern:"flo",Color:3},{Pattern:"bo",Color:3}]}}
execute as @a[team=Yellow,scores={crusadekit=1,deathCooldown=5}] unless entity @s[nbt={Inventory:[{Slot:-106b}]}] run item replace entity @s weapon.offhand with shield{Damage:333,display:{Name:'[{"text":"Knight Shield","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"translate":"A not-so-sturdy shield."}]']},BlockEntityTag:{Base:4,Patterns:[{Pattern:"flo",Color:1},{Pattern:"bo",Color:1}]}}
#Set banners
#Yellow A
execute unless block -14 53 38 minecraft:yellow_banner run setblock -14 53 38 minecraft:yellow_banner[rotation=8]{Patterns:[{Pattern:ms,Color:1},{Pattern:ls,Color:1},{Pattern:rs,Color:1},{Pattern:ts,Color:1},{Pattern:bo,Color:4}]}
execute unless block -14 52 40 minecraft:yellow_wall_banner run setblock -14 52 40 minecraft:yellow_wall_banner[facing=south]{Base:4,Patterns:[{Pattern:ms,Color:1},{Pattern:ls,Color:1},{Pattern:rs,Color:1},{Pattern:ts,Color:1},{Pattern:bo,Color:4}]}
#Yellow B
execute unless block 38 53 38 minecraft:yellow_banner run setblock 38 53 38 minecraft:yellow_banner[rotation=8]{Patterns:[{Pattern:rs,Color:1},{Pattern:bs,Color:1},{Pattern:ts,Color:1},{Pattern:cbo,Color:4},{Pattern:ls,Color:1},{Pattern:ms,Color:1},{Pattern:bo,Color:4}]}
execute unless block 38 52 40 minecraft:yellow_wall_banner run setblock 38 52 40 minecraft:yellow_wall_banner[facing=south]{Patterns:[{Pattern:rs,Color:1},{Pattern:bs,Color:1},{Pattern:ts,Color:1},{Pattern:cbo,Color:4},{Pattern:ls,Color:1},{Pattern:ms,Color:1},{Pattern:bo,Color:4}]}
#Blue A
execute unless block 38 53 -38 minecraft:blue_banner run setblock 38 53 -38 minecraft:blue_banner[rotation=0]{Patterns:[{Pattern:ms,Color:9},{Pattern:ls,Color:9},{Pattern:rs,Color:9},{Pattern:ts,Color:9},{Pattern:bo,Color:11}]}
execute unless block 38 52 -40 minecraft:blue_wall_banner run setblock 38 52 -40 minecraft:blue_wall_banner[facing=north]{Patterns:[{Pattern:ms,Color:9},{Pattern:ls,Color:9},{Pattern:rs,Color:9},{Pattern:ts,Color:9},{Pattern:bo,Color:11}]}
#Blue B
execute unless block -14 53 -38 minecraft:blue_banner run setblock -14 53 -38 minecraft:blue_banner[rotation=0]{Patterns:[{Pattern:rs,Color:9},{Pattern:bs,Color:9},{Pattern:ts,Color:9},{Pattern:cbo,Color:11},{Pattern:ls,Color:9},{Pattern:ms,Color:9},{Pattern:bo,Color:11}]}
execute unless block -14 52 -40 minecraft:blue_wall_banner run setblock -14 52 -40 minecraft:blue_wall_banner[facing=north]{Patterns:[{Pattern:rs,Color:9},{Pattern:bs,Color:9},{Pattern:ts,Color:9},{Pattern:cbo,Color:11},{Pattern:ls,Color:9},{Pattern:ms,Color:9},{Pattern:bo,Color:11}]}

#Spawnpoints
execute as @a[team=Blue,nbt=!{SpawnX:12,SpawnY:64,SpawnZ:-66}] run spawnpoint @s 12 64 -66 0
execute as @a[team=Yellow,nbt=!{SpawnX:12,SpawnY:64,SpawnZ:66}] run spawnpoint @s 12 64 66 -180

#> Kit signs
execute unless block 14 64 -64 oak_wall_sign run setblock 14 64 -64 minecraft:oak_wall_sign[facing=north]{Text1:'{"text":"Select Kit:","clickEvent":{"action":"run_command","value":"trigger crusadechange set 1"},"color":"#09FF00"}',Text2:'{"text":"Knight","bold":true,"color":"#008805"}'}
execute unless block 12 64 -63 oak_wall_sign run setblock 12 64 -63 minecraft:oak_wall_sign[facing=north]{Text1:'{"text":"Select Kit:","clickEvent":{"action":"run_command","value":"trigger crusadechange set 2"},"color":"#09FF00"}',Text2:'{"text":"Archer","bold":true,"color":"#008805"}'}
execute unless block 10 64 -64 oak_wall_sign run setblock 10 64 -64 minecraft:oak_wall_sign[facing=north]{Text1:'{"text":"Select Kit:","clickEvent":{"action":"run_command","value":"trigger crusadechange set 3"},"color":"#09FF00"}',Text2:'{"text":"Mage","bold":true,"color":"#008805"}'}
execute unless block 10 64 64 oak_wall_sign run setblock 10 64 64 minecraft:oak_wall_sign[facing=south]{Text1:'{"text":"Select Kit:","clickEvent":{"action":"run_command","value":"trigger crusadechange set 1"},"color":"#09FF00"}',Text2:'{"text":"Knight","bold":true,"color":"#008805"}'}
execute unless block 12 64 63 oak_wall_sign run setblock 12 64 63 minecraft:oak_wall_sign[facing=south]{Text1:'{"text":"Select Kit:","clickEvent":{"action":"run_command","value":"trigger crusadechange set 2"},"color":"#09FF00"}',Text2:'{"text":"Archer","bold":true,"color":"#008805"}'}
execute unless block 14 64 64 oak_wall_sign run setblock 14 64 64 minecraft:oak_wall_sign[facing=south]{Text1:'{"text":"Select Kit:","clickEvent":{"action":"run_command","value":"trigger crusadechange set 3"},"color":"#09FF00"}',Text2:'{"text":"Mage","bold":true,"color":"#008805"}'}


#> Crystal health & bossbars
bossbar set rr_crusade:blue players @a[team=!Lobby]
bossbar set rr_crusade:yellow players @a[team=!Lobby]
execute store result bossbar rr_crusade:blue value run scoreboard players get $BlueShield crusadehp
execute store result bossbar rr_crusade:yellow value run scoreboard players get $YellowShield crusadehp

#> Deplete health
execute if score $BlueShield crusadehp matches 1.. if score $CBA crusadehp matches 1.. unless entity @e[type=end_crystal,tag=CrusadeBlueA] run function rr_crusade:game/restorecba
execute if score $BlueShield crusadehp matches 1.. if score $CBB crusadehp matches 1.. unless entity @e[type=end_crystal,tag=CrusadeBlueB] run function rr_crusade:game/restorecbb
execute if score $YellowShield crusadehp matches 1.. if score $CYA crusadehp matches 1.. unless entity @e[type=end_crystal,tag=CrusadeYellowA] run function rr_crusade:game/restorecya
execute if score $YellowShield crusadehp matches 1.. if score $CYB crusadehp matches 1.. unless entity @e[type=end_crystal,tag=CrusadeYellowB] run function rr_crusade:game/restorecyb

#> Win condition
execute if score $BlueShield crusadehp matches -1000..0 unless block 4 45 -67 nether_portal run function rr_crusade:game/winyellow
execute if score $YellowShield crusadehp matches -1000..0 unless block 4 45 67 nether_portal run function rr_crusade:game/winblue