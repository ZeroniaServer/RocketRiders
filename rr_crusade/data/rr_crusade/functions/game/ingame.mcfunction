#leave midgame
execute if entity @s[tag=!SMActive] run function rr_crusade:game/leavemidgame

#general
function rr_crusade:items/spawnitems
function rr_crusade:game/cancel_utility

#middle wall
execute as @e[predicate=custom:indimension,type=marker,tag=crusadeWall] at @s run function rr_crusade:game/wallplacement

#regenerate glass every 30 seconds
scoreboard players add @e[predicate=custom:indimension,type=marker,tag=crusadeWall] CmdData 1
execute as @e[predicate=custom:indimension,type=marker,tag=crusadeWall,scores={CmdData=2400..}] run function rr_crusade:game/glassplacement
execute as @e[predicate=custom:indimension,type=marker,tag=crusadeWall,scores={CmdData=2400..}] run scoreboard players set @s CmdData 0

#Item RNG
scoreboard players add @s RandomItem 1
execute if score @s[tag=!Minute] RandomItem = @s[tag=!Minute] MaxItemTime if entity @s[tag=!gaveFirstItem] as @a[predicate=custom:indimension,team=!Lobby,team=!Spectator,team=!Developer,scores={crusadekit=2}] run function rr_crusade:items/util/givearrows
execute if score @s[tag=!Minute] RandomItem = @s[tag=!Minute] MaxItemTime run function rr_crusade:items/giverandom
execute if score @s[tag=!Minute] RandomItem > @s[tag=!Minute] MaxItemTime run scoreboard players set @s RandomItem 1
execute if entity @s[tag=Minute] run function rr_crusade:items/minutemix

#custom prevention message
execute as @a[predicate=custom:indimension,tag=preventionMSG] run tellraw @s ["",{"text":"Unable to spawn missile inside of obsidian or bedrock.","color":"red"}]
tag @a[predicate=custom:indimension,tag=preventionMSG] remove preventionMSG

#Selected kit particles
execute if score $dust CmdData matches 1 as @a[predicate=custom:indimension,team=!Lobby,team=!Spectator,team=!Developer,scores={crusadekit=1}] at @s at @e[predicate=custom:indimension,type=armor_stand,tag=KnightStand,limit=1,sort=nearest] run particle dust 0 1 0 1 ~ ~2.3 ~ 0 0 0 0.1 1 force @s
execute if score $dust CmdData matches 1 as @a[predicate=custom:indimension,team=!Lobby,team=!Spectator,team=!Developer,scores={crusadekit=2}] at @s at @e[predicate=custom:indimension,type=armor_stand,tag=ArcherStand,limit=1,sort=nearest] run particle dust 0 1 0 1 ~ ~2.3 ~ 0 0 0 0.1 1 force @s
execute if score $dust CmdData matches 1 as @a[predicate=custom:indimension,team=!Lobby,team=!Spectator,team=!Developer,scores={crusadekit=3}] at @s at @e[predicate=custom:indimension,type=armor_stand,tag=MageStand,limit=1,sort=nearest] run particle dust 0 1 0 1 ~ ~2.3 ~ 0 0 0 0.1 1 force @s

#Give knights new shields when they respawn
execute as @a[predicate=custom:indimension,scores={crusadekit=1,deathCooldown=5}] at @s run clear @s shield
execute as @a[predicate=custom:indimension,team=Blue,scores={crusadekit=1,deathCooldown=5}] if entity @s[nbt={Inventory:[{Slot:-106b}]}] run give @s shield{Damage:326,display:{Name:'[{"text":"Knight Shield","italic":false,"bold":true,"color":"blue"}]',Lore:['[{"translate":"A not-so-sturdy shield."}]']},BlockEntityTag:{Base:11,Patterns:[{Pattern:"flo",Color:3},{Pattern:"bo",Color:3}]}}
execute as @a[predicate=custom:indimension,team=Yellow,scores={crusadekit=1,deathCooldown=5}] if entity @s[nbt={Inventory:[{Slot:-106b}]}] run give @s shield{Damage:326,display:{Name:'[{"text":"Knight Shield","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"translate":"A not-so-sturdy shield."}]']},BlockEntityTag:{Base:4,Patterns:[{Pattern:"flo",Color:1},{Pattern:"bo",Color:1}]}}
execute as @a[predicate=custom:indimension,team=Blue,scores={crusadekit=1,deathCooldown=5}] unless entity @s[nbt={Inventory:[{Slot:-106b}]}] run item replace entity @s weapon.offhand with shield{Damage:326,display:{Name:'[{"text":"Knight Shield","italic":false,"bold":true,"color":"blue"}]',Lore:['[{"translate":"A not-so-sturdy shield."}]']},BlockEntityTag:{Base:11,Patterns:[{Pattern:"flo",Color:3},{Pattern:"bo",Color:3}]}}
execute as @a[predicate=custom:indimension,team=Yellow,scores={crusadekit=1,deathCooldown=5}] unless entity @s[nbt={Inventory:[{Slot:-106b}]}] run item replace entity @s weapon.offhand with shield{Damage:326,display:{Name:'[{"text":"Knight Shield","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"translate":"A not-so-sturdy shield."}]']},BlockEntityTag:{Base:4,Patterns:[{Pattern:"flo",Color:1},{Pattern:"bo",Color:1}]}}
#Set banners/light blocks
#Yellow A
execute unless block -14 53 38 minecraft:yellow_banner run setblock -14 53 38 minecraft:yellow_banner[rotation=8]{Patterns:[{Pattern:ms,Color:1},{Pattern:ls,Color:1},{Pattern:rs,Color:1},{Pattern:ts,Color:1},{Pattern:bo,Color:4}]}
execute unless block -14 52 40 minecraft:yellow_wall_banner run setblock -14 52 40 minecraft:yellow_wall_banner[facing=south]{Patterns:[{Pattern:ms,Color:1},{Pattern:ls,Color:1},{Pattern:rs,Color:1},{Pattern:ts,Color:1},{Pattern:bo,Color:4}]}
fill -16 51 40 -12 47 40 light[level=1]
#Yellow B
execute unless block 38 53 38 minecraft:yellow_banner run setblock 38 53 38 minecraft:yellow_banner[rotation=8]{Patterns:[{Pattern:rs,Color:1},{Pattern:bs,Color:1},{Pattern:ts,Color:1},{Pattern:cbo,Color:4},{Pattern:ls,Color:1},{Pattern:ms,Color:1},{Pattern:bo,Color:4}]}
execute unless block 38 52 40 minecraft:yellow_wall_banner run setblock 38 52 40 minecraft:yellow_wall_banner[facing=south]{Patterns:[{Pattern:rs,Color:1},{Pattern:bs,Color:1},{Pattern:ts,Color:1},{Pattern:cbo,Color:4},{Pattern:ls,Color:1},{Pattern:ms,Color:1},{Pattern:bo,Color:4}]}
fill 36 51 40 40 47 40 light[level=1]
#Blue A
execute unless block 38 53 -38 minecraft:blue_banner run setblock 38 53 -38 minecraft:blue_banner[rotation=0]{Patterns:[{Pattern:ms,Color:9},{Pattern:ls,Color:9},{Pattern:rs,Color:9},{Pattern:ts,Color:9},{Pattern:bo,Color:11}]}
execute unless block 38 52 -40 minecraft:blue_wall_banner run setblock 38 52 -40 minecraft:blue_wall_banner[facing=north]{Patterns:[{Pattern:ms,Color:9},{Pattern:ls,Color:9},{Pattern:rs,Color:9},{Pattern:ts,Color:9},{Pattern:bo,Color:11}]}
fill 36 51 -40 40 47 -40 light[level=1]
#Blue B
execute unless block -14 53 -38 minecraft:blue_banner run setblock -14 53 -38 minecraft:blue_banner[rotation=0]{Patterns:[{Pattern:rs,Color:9},{Pattern:bs,Color:9},{Pattern:ts,Color:9},{Pattern:cbo,Color:11},{Pattern:ls,Color:9},{Pattern:ms,Color:9},{Pattern:bo,Color:11}]}
execute unless block -14 52 -40 minecraft:blue_wall_banner run setblock -14 52 -40 minecraft:blue_wall_banner[facing=north]{Patterns:[{Pattern:rs,Color:9},{Pattern:bs,Color:9},{Pattern:ts,Color:9},{Pattern:cbo,Color:11},{Pattern:ls,Color:9},{Pattern:ms,Color:9},{Pattern:bo,Color:11}]}
fill -16 51 -40 -12 47 -40 light[level=1]

#Spawnpoints
execute as @a[predicate=custom:indimension,team=Blue,nbt=!{SpawnX:12,SpawnY:64,SpawnZ:-66}] run spawnpoint @s 12 64 -66 0
execute as @a[predicate=custom:indimension,team=Yellow,nbt=!{SpawnX:12,SpawnY:64,SpawnZ:66}] run spawnpoint @s 12 64 66 -180

#Suffocate players in gray glass
execute as @a[predicate=custom:indimension,tag=!inGlass] unless entity @s[team=!Blue,team=!Yellow] at @s if block ~ ~ ~ light_gray_stained_glass if block ~ ~1 ~ light_gray_stained_glass run effect give @s poison infinite 4 true
execute as @a[predicate=custom:indimension,tag=!inGlass] unless entity @s[team=!Blue,team=!Yellow] at @s if block ~ ~ ~ light_gray_stained_glass if block ~ ~1 ~ light_gray_stained_glass run tag @s add inGlass
execute as @a[predicate=custom:indimension,tag=inGlass] unless entity @s[team=!Blue,team=!Yellow] at @s unless block ~ ~ ~ light_gray_stained_glass run tag @s add notInGlass
execute as @a[predicate=custom:indimension,tag=inGlass] unless entity @s[team=!Blue,team=!Yellow] at @s unless block ~ ~1 ~ light_gray_stained_glass run tag @s add notInGlass
effect clear @a[predicate=custom:indimension,tag=notInGlass] poison
tag @a[predicate=custom:indimension,tag=notInGlass] remove inGlass
tag @a[predicate=custom:indimension] remove notInGlass
tag @a[predicate=custom:indimension,team=!Blue,team=!Yellow] remove inGlass

#> Kit signs + obsidian
execute unless block 14 64 -64 oak_wall_sign run setblock 14 64 -64 minecraft:oak_wall_sign[facing=north]{front_text:{messages:['{"text":"Select Kit:","clickEvent":{"action":"run_command","value":"trigger crusadechange set 1"},"color":"#09FF00"}','{"text":"Knight","bold":true,"color":"#008805"}','{"text":""}','{"text":""}']}}
execute unless block 12 64 -63 oak_wall_sign run setblock 12 64 -63 minecraft:oak_wall_sign[facing=north]{front_text:{messages:['{"text":"Select Kit:","clickEvent":{"action":"run_command","value":"trigger crusadechange set 2"},"color":"#09FF00"}','{"text":"Archer","bold":true,"color":"#008805"}','{"text":""}','{"text":""}']}}
execute unless block 10 64 -64 oak_wall_sign run setblock 10 64 -64 minecraft:oak_wall_sign[facing=north]{front_text:{messages:['{"text":"Select Kit:","clickEvent":{"action":"run_command","value":"trigger crusadechange set 3"},"color":"#09FF00"}','{"text":"Mage","bold":true,"color":"#008805"}','{"text":""}','{"text":""}']}}
execute unless block 10 64 64 oak_wall_sign run setblock 10 64 64 minecraft:oak_wall_sign[facing=south]{front_text:{messages:['{"text":"Select Kit:","clickEvent":{"action":"run_command","value":"trigger crusadechange set 1"},"color":"#09FF00"}','{"text":"Knight","bold":true,"color":"#008805"}','{"text":""}','{"text":""}']}}
execute unless block 12 64 63 oak_wall_sign run setblock 12 64 63 minecraft:oak_wall_sign[facing=south]{front_text:{messages:['{"text":"Select Kit:","clickEvent":{"action":"run_command","value":"trigger crusadechange set 2"},"color":"#09FF00"}','{"text":"Archer","bold":true,"color":"#008805"}','{"text":""}','{"text":""}']}}
execute unless block 14 64 64 oak_wall_sign run setblock 14 64 64 minecraft:oak_wall_sign[facing=south]{front_text:{messages:['{"text":"Select Kit:","clickEvent":{"action":"run_command","value":"trigger crusadechange set 3"},"color":"#09FF00"}','{"text":"Mage","bold":true,"color":"#008805"}','{"text":""}','{"text":""}']}}
execute unless block 10 64 -63 obsidian run setblock 10 64 -63 obsidian
execute unless block 12 64 -62 obsidian run setblock 12 64 -62 obsidian
execute unless block 14 64 -63 obsidian run setblock 14 64 -63 obsidian
execute unless block 10 63 -63 obsidian run setblock 10 63 -63 obsidian
execute unless block 12 63 -62 obsidian run setblock 12 63 -62 obsidian
execute unless block 14 63 -63 obsidian run setblock 14 63 -63 obsidian
execute unless block 10 64 63 obsidian run setblock 10 64 63 obsidian
execute unless block 12 64 62 obsidian run setblock 12 64 62 obsidian
execute unless block 14 64 63 obsidian run setblock 14 64 63 obsidian
execute unless block 10 63 63 obsidian run setblock 10 63 63 obsidian
execute unless block 12 63 62 obsidian run setblock 12 63 62 obsidian
execute unless block 14 63 63 obsidian run setblock 14 63 63 obsidian

#> Crystal health & bossbars
bossbar set rr_crusade:blue players @a[predicate=custom:indimension,team=!Lobby]
bossbar set rr_crusade:yellow players @a[predicate=custom:indimension,team=!Lobby]
execute store result bossbar rr_crusade:blue value run scoreboard players get $BlueShield crusadehp
execute store result bossbar rr_crusade:yellow value run scoreboard players get $YellowShield crusadehp

#> Deplete health
execute if score $BlueShield crusadehp matches 1.. if score $CBA crusadehp matches 1.. unless entity @e[predicate=custom:indimension,type=end_crystal,tag=CrusadeBlueA] run function rr_crusade:game/restorecba
execute if score $BlueShield crusadehp matches 1.. if score $CBB crusadehp matches 1.. unless entity @e[predicate=custom:indimension,type=end_crystal,tag=CrusadeBlueB] run function rr_crusade:game/restorecbb
execute if score $YellowShield crusadehp matches 1.. if score $CYA crusadehp matches 1.. unless entity @e[predicate=custom:indimension,type=end_crystal,tag=CrusadeYellowA] run function rr_crusade:game/restorecya
execute if score $YellowShield crusadehp matches 1.. if score $CYB crusadehp matches 1.. unless entity @e[predicate=custom:indimension,type=end_crystal,tag=CrusadeYellowB] run function rr_crusade:game/restorecyb

#> Win condition
execute if score $BlueShield crusadehp matches -1000..0 unless block 4 45 -67 nether_portal if score $YellowShield crusadehp matches -1000..0 unless block 4 45 67 nether_portal run function game:winbothcheck
execute if entity @s[tag=!BothWon] if score $BlueShield crusadehp matches -1000..0 unless block 4 45 -67 nether_portal run function rr_crusade:game/winyellow
execute if entity @s[tag=!BothWon] if score $YellowShield crusadehp matches -1000..0 unless block 4 45 67 nether_portal run function rr_crusade:game/winblue