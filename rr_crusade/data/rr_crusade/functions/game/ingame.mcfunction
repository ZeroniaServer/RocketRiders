#leave midgame
execute if entity @s[tag=!SMActive] run function rr_crusade:game/leavemidgame

#general
function rr_crusade:game/cancel_utility

#middle wall
execute as @e[x=0,type=marker,tag=crusadeWall] at @s run function rr_crusade:game/wallplacement

#regenerate glass every 30 seconds
scoreboard players add @e[x=0,type=marker,tag=crusadeWall] CmdData 1
execute as @e[x=0,type=marker,tag=crusadeWall,scores={CmdData=2400..}] run function rr_crusade:game/glassplacement
execute as @e[x=0,type=marker,tag=crusadeWall,scores={CmdData=2400..}] run scoreboard players set @s CmdData 0

#place pathways
function rr_crusade:arenaclear/pathways

#Item RNG
scoreboard players add @s RandomItem 1
execute if score @s[tag=!Minute] RandomItem = @s[tag=!Minute] MaxItemTime if entity @s[tag=!gaveFirstItem] as @a[x=0,team=!Lobby,team=!Spectator,team=!Developer,scores={crusadekit=2}] run function rr_crusade:items/util/givearrows
execute if score @s[tag=!Minute] RandomItem = @s[tag=!Minute] MaxItemTime run function rr_crusade:items/giverandom
execute if score @s[tag=!Minute] RandomItem > @s[tag=!Minute] MaxItemTime run scoreboard players set @s RandomItem 1
execute if entity @s[tag=Minute] run function rr_crusade:items/minutemix

#custom prevention message
execute as @a[x=0,tag=preventionMSG] run tellraw @s ["",{"text":"Unable to spawn missile inside of obsidian or bedrock.","color":"red"}]
tag @a[x=0,tag=preventionMSG] remove preventionMSG

#Selected kit particles
execute if score $dust CmdData matches 1 as @a[x=0,team=!Lobby,team=!Spectator,team=!Developer,tag=!hideParticles,scores={crusadekit=1}] at @s at @e[x=0,type=armor_stand,tag=KnightStand,limit=1,sort=nearest] run particle dust 0 1 0 1 ~ ~2.3 ~ 0 0 0 0.1 1 force @s
execute if score $dust CmdData matches 1 as @a[x=0,team=!Lobby,team=!Spectator,team=!Developer,tag=!hideParticles,scores={crusadekit=2}] at @s at @e[x=0,type=armor_stand,tag=ArcherStand,limit=1,sort=nearest] run particle dust 0 1 0 1 ~ ~2.3 ~ 0 0 0 0.1 1 force @s
execute if score $dust CmdData matches 1 as @a[x=0,team=!Lobby,team=!Spectator,team=!Developer,tag=!hideParticles,scores={crusadekit=3}] at @s at @e[x=0,type=armor_stand,tag=MageStand,limit=1,sort=nearest] run particle dust 0 1 0 1 ~ ~2.3 ~ 0 0 0 0.1 1 force @s

#Mage wand - UNUSED
# execute as @a[x=0,scores={crusadekit=3},predicate=rr_crusade:holdwand] at @s run function rr_crusade:game/mage_wand
# execute as @e[x=0,type=interaction,tag=wandbox] run function rr_crusade:game/kill_wand_box
# execute store success score $toggle CmdData if score $toggle CmdData matches 0
# execute as @e[x=0,type=small_fireball] store result entity @s Air short 1 run scoreboard players get $toggle CmdData

#Give knights new shields when they respawn
execute as @a[x=0,scores={crusadekit=1,deathCooldown=5}] at @s run clear @s shield
execute as @a[x=0,team=Blue,scores={crusadekit=1,deathCooldown=5}] if entity @s[nbt={Inventory:[{Slot:-106b}]}] run give @s minecraft:shield[damage=326,custom_name='[{"text":"Knight Shield","italic":false,"bold":true,"color":"blue"}]',lore=['[{"translate":"A not-so-sturdy shield."}]'],base_color="blue",banner_patterns=[{pattern:"flower",color:"light_blue"},{pattern:"border",color:"light_blue"}]]
execute as @a[x=0,team=Yellow,scores={crusadekit=1,deathCooldown=5}] if entity @s[nbt={Inventory:[{Slot:-106b}]}] run give @s minecraft:shield[damage=326,custom_name='[{"text":"Knight Shield","italic":false,"bold":true,"color":"gold"}]',lore=['[{"translate":"A not-so-sturdy shield."}]'],base_color="yellow",banner_patterns=[{pattern:"flower",color:"orange"},{pattern:"border",color:"orange"}]]
execute as @a[x=0,team=Blue,scores={crusadekit=1,deathCooldown=5}] unless entity @s[nbt={Inventory:[{Slot:-106b}]}] run item replace entity @s weapon.offhand with minecraft:shield[damage=326,custom_name='[{"text":"Knight Shield","italic":false,"bold":true,"color":"blue"}]',lore=['[{"translate":"A not-so-sturdy shield."}]'],base_color="blue",banner_patterns=[{pattern:"flower",color:"light_blue"},{pattern:"border",color:"light_blue"}]]
execute as @a[x=0,team=Yellow,scores={crusadekit=1,deathCooldown=5}] unless entity @s[nbt={Inventory:[{Slot:-106b}]}] run item replace entity @s weapon.offhand with minecraft:shield[damage=326,custom_name='[{"text":"Knight Shield","italic":false,"bold":true,"color":"gold"}]',lore=['[{"translate":"A not-so-sturdy shield."}]'],base_color="yellow",banner_patterns=[{pattern:"flower",color:"orange"},{pattern:"border",color:"orange"}]]
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
execute as @a[x=0,team=Blue,nbt=!{SpawnX:12,SpawnY:64,SpawnZ:-66}] run spawnpoint @s 12 64 -66 0
execute as @a[x=0,team=Yellow,nbt=!{SpawnX:12,SpawnY:64,SpawnZ:66}] run spawnpoint @s 12 64 66 -180

#Suffocate players in gray glass
execute as @a[x=0,tag=!inGlass] unless entity @s[team=!Blue,team=!Yellow] at @s if block ~ ~ ~ light_gray_stained_glass if block ~ ~1 ~ light_gray_stained_glass run effect give @s poison infinite 4 true
execute as @a[x=0,tag=!inGlass] unless entity @s[team=!Blue,team=!Yellow] at @s if block ~ ~ ~ light_gray_stained_glass if block ~ ~1 ~ light_gray_stained_glass run tag @s add inGlass
execute as @a[x=0,tag=inGlass] unless entity @s[team=!Blue,team=!Yellow] at @s unless block ~ ~ ~ light_gray_stained_glass run tag @s add notInGlass
execute as @a[x=0,tag=inGlass] unless entity @s[team=!Blue,team=!Yellow] at @s unless block ~ ~1 ~ light_gray_stained_glass run tag @s add notInGlass
effect clear @a[x=0,tag=notInGlass] poison
tag @a[x=0,tag=notInGlass] remove inGlass
tag @a[x=0] remove notInGlass
tag @a[x=0,team=!Blue,team=!Yellow] remove inGlass

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
bossbar set rr_crusade:blue players @a[x=0,team=!Lobby]
bossbar set rr_crusade:yellow players @a[x=0,team=!Lobby]
execute store result bossbar rr_crusade:blue value run scoreboard players get $BlueShield crusadehp
execute store result bossbar rr_crusade:yellow value run scoreboard players get $YellowShield crusadehp

#> Deplete health
execute if score $BlueShield crusadehp matches 1.. if score $CBA crusadehp matches 1.. unless entity @e[x=0,type=end_crystal,tag=CrusadeBlueA] run function rr_crusade:game/restorecba
execute if score $BlueShield crusadehp matches 1.. if score $CBB crusadehp matches 1.. unless entity @e[x=0,type=end_crystal,tag=CrusadeBlueB] run function rr_crusade:game/restorecbb
execute if score $YellowShield crusadehp matches 1.. if score $CYA crusadehp matches 1.. unless entity @e[x=0,type=end_crystal,tag=CrusadeYellowA] run function rr_crusade:game/restorecya
execute if score $YellowShield crusadehp matches 1.. if score $CYB crusadehp matches 1.. unless entity @e[x=0,type=end_crystal,tag=CrusadeYellowB] run function rr_crusade:game/restorecyb

#> Win condition
execute if score $BlueShield crusadehp matches -1000..0 unless block 4 45 -67 nether_portal if score $YellowShield crusadehp matches -1000..0 unless block 4 45 67 nether_portal run function game:winbothcheck
execute if entity @s[tag=!BothWon] if score $BlueShield crusadehp matches -1000..0 unless block 4 45 -67 nether_portal run function rr_crusade:game/winyellow
execute if entity @s[tag=!BothWon] if score $YellowShield crusadehp matches -1000..0 unless block 4 45 67 nether_portal run function rr_crusade:game/winblue