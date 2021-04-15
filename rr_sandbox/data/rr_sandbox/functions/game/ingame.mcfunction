#leave midgame
scoreboard players enable @a LeaveMidgame
tellraw @a[team=Blue,scores={dropPickaxe=1..}] [{"text":"Are you sure you want to leave the match? ","color":"blue"},{"text":"[YES]","color":"green","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger LeaveMidgame set 1"}}]
tellraw @a[team=Yellow,scores={dropPickaxe=1..}] [{"text":"Are you sure you want to leave the match? ","color":"gold"},{"text":"[YES]","color":"green","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger LeaveMidgame set 1"}}]
scoreboard players set @a[scores={dropPickaxe=1..}] dropPickaxe 0
execute as @a[team=Blue,scores={LeaveMidgame=1}] run tellraw @a [{"selector":"@s"},{"text":" left the match!","color":"aqua"}]
scoreboard players set @a[team=Blue,scores={LeaveMidgame=1}] LeaveGame 1
execute as @a[team=Yellow,scores={LeaveMidgame=1}] run tellraw @a [{"selector":"@s"},{"text":" left the match!","color":"yellow"}]
scoreboard players set @a[team=Yellow,scores={LeaveMidgame=1}] LeaveGame 1
tellraw @s[team=!Blue,team=!Yellow,scores={LeaveMidgame=1}] [{"text":"You are not in a match anymore.","color":"green"}]

#general
function rr_sandbox:items/spawnitems

#give all players slow falling + shifting players levitation (SUPER EXPERIMENTAL, DOESN'T WORK WELL)
#effect give @a[team=Yellow] slow_falling 1 0 true
#effect give @a[team=Blue] slow_falling 1 0 true
#effect give @a[team=Yellow,scores={SBsneak=1..}] levitation 1 2 true
#effect give @a[team=Blue,scores={SBsneak=1..}] levitation 1 2 true
#scoreboard players reset @a SBsneak

#item generators
scoreboard players add @s sandboxRandom 1
execute as @s[scores={sandboxRandom=80..}] run function rr_sandbox:items/rng
scoreboard players reset @s[scores={sandboxRandom=80..}] sandboxRandom

#give specific defensive items (TODO exclude canopy?) -- incompatible with item delay
scoreboard players add @s RandomItem 1
execute as @s[scores={RandomItem=400..}] run function items:util/rng
scoreboard players reset @s[scores={RandomItem=400..}] RandomItem

#spawnpoints
execute as @a[team=Blue,nbt=!{SpawnX:12,SpawnY:64,SpawnZ:-66}] run spawnpoint @s 12 64 -66 0
execute as @a[team=Yellow,nbt=!{SpawnX:12,SpawnY:64,SpawnZ:66}] run spawnpoint @s 12 64 66 -180

#smart clear stuff
execute as @a[team=Yellow] unless entity @s[scores={SBplaceSlime=0,SBplaceRS=0,SBplacePiston=0,SBplaceSPiston=0,SBplaceObs=0,SBplaceTNT=0,SBplaceBGlass=0,SBplaceYGlass=0,SBplaceBGlaze=0,SBplaceYGlaze=0,SBplaceBCon=0,SBplaceYCon=0}] at @s unless entity @e[tag=SmartClearAECyellow,limit=1,sort=nearest,distance=..6,type=area_effect_cloud] run summon area_effect_cloud ~ ~ ~ {Duration:2000000000,Tags:["SmartClearAECyellow"]}
execute as @a[team=Blue] unless entity @s[scores={SBplaceSlime=0,SBplaceRS=0,SBplacePiston=0,SBplaceSPiston=0,SBplaceObs=0,SBplaceTNT=0,SBplaceBGlass=0,SBplaceYGlass=0,SBplaceBGlaze=0,SBplaceYGlaze=0,SBplaceBCon=0,SBplaceYCon=0}] at @s unless entity @e[tag=SmartClearAECblue,limit=1,sort=nearest,distance=..6,type=area_effect_cloud] run summon area_effect_cloud ~ ~ ~ {Duration:2000000000,Tags:["SmartClearAECblue"]}
execute as @a unless entity @s[team=!Yellow,team=!Blue] unless entity @s[scores={SBplaceScaf=0}] at @s unless entity @e[tag=SmartClearScaf,limit=1,sort=nearest,distance=..6,type=area_effect_cloud] run summon area_effect_cloud ~ ~ ~ {Duration:2000000000,Tags:["SmartClearScaf"]}

#score reset
scoreboard players set @a SBplaceSlime 0
scoreboard players set @a SBplaceRS 0
scoreboard players set @a SBplacePiston 0
scoreboard players set @a SBplaceSPiston 0
scoreboard players set @a SBplaceObs 0
scoreboard players set @a SBplaceTNT 0
scoreboard players set @a SBplaceBGlass 0
scoreboard players set @a SBplaceYGlass 0
scoreboard players set @a SBplaceBGlaze 0
scoreboard players set @a SBplaceYGlaze 0
scoreboard players set @a SBplaceBCon 0
scoreboard players set @a SBplaceYCon 0
scoreboard players set @a SBplaceScaf 0

#disable portal mining
execute as @a[team=Yellow] at @s if entity @s[z=70,dz=8] run effect give @s mining_fatigue 1000000 255 true
execute as @a[team=Yellow] at @s unless entity @s[z=70,dz=8] run effect clear @s mining_fatigue
execute as @a[team=Blue] at @s if entity @s[z=-78,dz=8] run effect give @s mining_fatigue 1000000 255 true
execute as @a[team=Blue] at @s unless entity @s[z=-78,dz=8] run effect clear @s mining_fatigue

#win
execute if block 13 38 74 air run function rr_sandbox:game/winblue
execute if block 11 38 74 air run function rr_sandbox:game/winblue

execute if block 11 38 -74 air run function rr_sandbox:game/winyellow
execute if block 13 38 -74 air run function rr_sandbox:game/winyellow