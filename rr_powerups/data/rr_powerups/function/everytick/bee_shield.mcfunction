#bee shield
execute as @a[x=0,scores={DrinkHoney=1..},team=Yellow] at @s run summon armor_stand ~ ~ ~ {Tags:["BeeShieldDisplay","YellowBee"],Invisible:1b,Invulnerable:1b,Silent:1b,DisabledSlots:4144959}
execute as @a[x=0,scores={DrinkHoney=1..},team=Blue] at @s run summon armor_stand ~ ~ ~ {Tags:["BeeShieldDisplay","BlueBee"],Invisible:1b,Invulnerable:1b,Silent:1b,DisabledSlots:4144959}
scoreboard players add @e[x=0,type=armor_stand,tag=BeeShieldDisplay] BeeShieldTime 1
execute as @a[x=0,scores={DrinkHoney=1..}] at @s anchored eyes run tp @e[type=armor_stand,tag=BeeShieldDisplay,scores={BeeShieldTime=1},distance=..4,limit=1,sort=nearest] @s
execute as @a[x=0,scores={DrinkHoney=1..}] at @s as @e[type=armor_stand,tag=BeeShieldDisplay,scores={BeeShieldTime=1},distance=..4,limit=1,sort=nearest] at @s run function rr_powerups:everytick/projectile
scoreboard players reset @a[x=0] DrinkHoney
item replace entity @e[x=0,type=armor_stand,tag=BeeShieldDisplay,scores={BeeShieldTime=1}] armor.head with honey_block
execute as @e[x=0,type=armor_stand,tag=BeeShieldDisplay] at @s run playsound minecraft:block.honey_block.slide master @a[x=0] ~ ~ ~ 2 0.8
execute as @e[x=0,type=armor_stand,tag=BeeShieldDisplay] at @s anchored eyes if score $dust CmdData matches 1 run particle minecraft:block honey_block ~ ~ ~ 0 0 0 1 10

#kill conditions
execute as @e[x=0,type=armor_stand,tag=BeeShieldDisplay] at @s if entity @s[x=-12,y=36,z=-74,dx=48,dy=25] run scoreboard players set @s CmdData -3
execute as @e[x=0,type=armor_stand,tag=BeeShieldDisplay] at @s if entity @s[x=-12,y=36,z=74,dx=48,dy=25] run scoreboard players set @s CmdData -3
execute as @e[x=0,type=armor_stand,tag=BeeShieldDisplay] at @s if entity @e[type=marker,tag=YellowSpawnZone,distance=..3] run scoreboard players remove @s CmdData 1
execute as @e[x=0,type=armor_stand,tag=BeeShieldDisplay] at @s if entity @e[type=marker,tag=BlueSpawnZone,distance=..3] run scoreboard players remove @s CmdData 1

#Kill bee shield near void
execute as @e[x=0,type=marker,tag=animBshield] at @s if predicate custom:nearvoid run kill @s
execute as @e[x=0,type=armor_stand,tag=BeeShieldDisplay] at @s if predicate custom:nearvoid run scoreboard players set @s CmdData -3

#Kill bee shield near roof
execute as @e[x=0,type=marker,tag=animBshield] at @s if entity @s[y=175,dy=100] run kill @s
execute as @e[x=0,type=armor_stand,tag=BeeShieldDisplay] at @s if entity @s[y=175,dy=100] run scoreboard players set @s CmdData -3

#Kill bee shield outside border
execute as @e[x=0,type=marker,tag=animBshield] at @s unless predicate custom:insideborder run kill @s
execute as @e[x=0,type=armor_stand,tag=BeeShieldDisplay] at @s unless predicate custom:insideborder run scoreboard players set @s CmdData -3

execute as @e[x=0,type=armor_stand,tag=BeeShieldDisplay,scores={CmdData=..-3}] at @s run particle minecraft:block honey_block ~ ~ ~ 0.5 0.5 0.5 1 100
execute as @e[x=0,type=armor_stand,tag=BeeShieldDisplay,scores={CmdData=..-3}] at @s run playsound minecraft:block.honey_block.hit master @a[x=0] ~ ~ ~ 2 1
execute as @e[x=0,type=armor_stand,tag=BeeShieldDisplay,scores={CmdData=..-3}] at @s run playsound minecraft:block.honey_block.break master @a[x=0] ~ ~ ~ 2 1
kill @e[x=0,type=armor_stand,tag=BeeShieldDisplay,scores={CmdData=..-3}]

#placement (animations etc)
execute as @e[x=0,type=armor_stand,tag=BlueBee,scores={BeeShieldTime=20}] at @s run summon marker ~ ~3 ~ {Tags:["BBeeShieldDisplay","animBshield"]}
execute as @e[x=0,type=armor_stand,tag=YellowBee,scores={BeeShieldTime=20}] at @s run summon marker ~ ~3 ~ {Tags:["YBeeShieldDisplay","animBshield"]}
scoreboard players add @e[x=0,type=marker,tag=animBshield] BeeShieldTime 1

##Blue animation
execute as @e[x=0,type=marker,tag=BBeeShieldDisplay,scores={BeeShieldTime=1}] at @s run place template bees_blue_stage1 ~-2 ~-4 ~
execute as @e[x=0,type=marker,tag=BBeeShieldDisplay,scores={BeeShieldTime=3}] at @s run place template bees_blue_stage2 ~-2 ~-4 ~
execute as @e[x=0,type=marker,tag=BBeeShieldDisplay,scores={BeeShieldTime=5}] at @s run place template bees_blue_stage3 ~-2 ~-4 ~
execute as @e[x=0,type=marker,tag=BBeeShieldDisplay,scores={BeeShieldTime=7}] at @s run place template bees_blue_stage4 ~-2 ~-4 ~
execute as @e[x=0,type=marker,tag=BBeeShieldDisplay,scores={BeeShieldTime=9}] at @s run place template bees_blue_stage5 ~-2 ~-4 ~
execute as @e[x=0,type=marker,tag=BBeeShieldDisplay,scores={BeeShieldTime=21}] at @s run place template bees_blue_stage6 ~-2 ~-4 ~
execute as @e[x=0,type=marker,tag=BBeeShieldDisplay,scores={BeeShieldTime=23}] at @s run place template bees_blue_stage7 ~-2 ~-4 ~
execute as @e[x=0,type=marker,tag=BBeeShieldDisplay,scores={BeeShieldTime=24}] at @s run place template bees_blue_stage8 ~-2 ~-4 ~
execute as @e[x=0,type=marker,tag=BBeeShieldDisplay,scores={BeeShieldTime=26}] at @s run place template bees_blue_stage9 ~-2 ~-4 ~
execute as @e[x=0,type=marker,tag=BBeeShieldDisplay,scores={BeeShieldTime=28}] at @s run place template bees_blue_stage10 ~-2 ~-4 ~
execute as @e[x=0,type=marker,tag=BBeeShieldDisplay,scores={BeeShieldTime=30}] at @s run place template bees_blue_stage11 ~-2 ~-4 ~
execute as @e[x=0,type=marker,tag=BBeeShieldDisplay,scores={BeeShieldTime=32}] at @s run place template rr_powerups:bees_blue_full ~-2 ~-4 ~

##Yellow animation
execute as @e[x=0,type=marker,tag=YBeeShieldDisplay,scores={BeeShieldTime=1}] at @s run place template bees_yellow_stage1 ~-2 ~-4 ~
execute as @e[x=0,type=marker,tag=YBeeShieldDisplay,scores={BeeShieldTime=3}] at @s run place template bees_yellow_stage2 ~-2 ~-4 ~
execute as @e[x=0,type=marker,tag=YBeeShieldDisplay,scores={BeeShieldTime=5}] at @s run place template bees_yellow_stage3 ~-2 ~-4 ~
execute as @e[x=0,type=marker,tag=YBeeShieldDisplay,scores={BeeShieldTime=7}] at @s run place template bees_yellow_stage4 ~-2 ~-4 ~
execute as @e[x=0,type=marker,tag=YBeeShieldDisplay,scores={BeeShieldTime=9}] at @s run place template bees_yellow_stage5 ~-2 ~-4 ~
execute as @e[x=0,type=marker,tag=YBeeShieldDisplay,scores={BeeShieldTime=21}] at @s run place template bees_yellow_stage6 ~-2 ~-4 ~
execute as @e[x=0,type=marker,tag=YBeeShieldDisplay,scores={BeeShieldTime=23}] at @s run place template bees_yellow_stage7 ~-2 ~-4 ~
execute as @e[x=0,type=marker,tag=YBeeShieldDisplay,scores={BeeShieldTime=24}] at @s run place template bees_yellow_stage8 ~-2 ~-4 ~
execute as @e[x=0,type=marker,tag=YBeeShieldDisplay,scores={BeeShieldTime=26}] at @s run place template bees_yellow_stage9 ~-2 ~-4 ~
execute as @e[x=0,type=marker,tag=YBeeShieldDisplay,scores={BeeShieldTime=28}] at @s run place template bees_yellow_stage10 ~-2 ~-4 ~
execute as @e[x=0,type=marker,tag=YBeeShieldDisplay,scores={BeeShieldTime=30}] at @s run place template bees_yellow_stage11 ~-2 ~-4 ~
execute as @e[x=0,type=marker,tag=YBeeShieldDisplay,scores={BeeShieldTime=32}] at @s run place template rr_powerups:bees_yellow_full ~-2 ~-4 ~

#Sounds and particles for the shield animation
execute as @e[x=0,type=marker,tag=animBshield,scores={BeeShieldTime=1}] at @s run playsound block.beehive.enter master @a[x=0] ~ ~ ~ 1.5 1.3
execute as @e[x=0,type=marker,tag=animBshield,scores={BeeShieldTime=3}] at @s run playsound block.beehive.enter master @a[x=0] ~ ~ ~ 1.5 1.2
execute as @e[x=0,type=marker,tag=animBshield,scores={BeeShieldTime=5}] at @s run playsound block.beehive.enter master @a[x=0] ~ ~ ~ 1.5 1
execute as @e[x=0,type=marker,tag=animBshield,scores={BeeShieldTime=7}] at @s run playsound block.beehive.enter master @a[x=0] ~ ~ ~ 1.5 0.9
execute as @e[x=0,type=marker,tag=animBshield,scores={BeeShieldTime=9}] at @s run playsound block.beehive.enter master @a[x=0] ~ ~ ~ 1.5 0.8
execute as @e[x=0,type=marker,tag=animBshield,scores={BeeShieldTime=21}] at @s run playsound block.honey_block.break master @a[x=0] ~ ~ ~ 1.5 0.5
execute as @e[x=0,type=marker,tag=animBshield,scores={BeeShieldTime=23}] at @s run playsound block.honey_block.break master @a[x=0] ~ ~ ~ 1.5 0.6
execute as @e[x=0,type=marker,tag=animBshield,scores={BeeShieldTime=24}] at @s run playsound block.honey_block.break master @a[x=0] ~ ~ ~ 1.5 0.7
execute as @e[x=0,type=marker,tag=animBshield,scores={BeeShieldTime=26}] at @s run playsound block.honey_block.break master @a[x=0] ~ ~ ~ 1.5 0.8
execute as @e[x=0,type=marker,tag=animBshield,scores={BeeShieldTime=21}] at @s run playsound block.glass.break master @a[x=0] ~ ~ ~ 1.5 1.3
execute as @e[x=0,type=marker,tag=animBshield,scores={BeeShieldTime=23}] at @s run playsound block.glass.break master @a[x=0] ~ ~ ~ 1.5 1.2
execute as @e[x=0,type=marker,tag=animBshield,scores={BeeShieldTime=32}] at @s run playsound block.grass.break master @a[x=0] ~ ~ ~ 1.5 0.8
execute as @e[x=0,type=marker,tag=animBshield,scores={BeeShieldTime=31}] at @s run particle block tnt ~ ~-2 ~ 0.2 0.2 0.2 0.2 40 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute as @e[x=0,type=marker,tag=animBshield,scores={BeeShieldTime=31}] at @s run particle block honey_block ~ ~-2 ~ 1 1.5 0 0.1 200 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]

#Kill animation AEC
kill @e[x=0,type=marker,tag=animBshield,scores={BeeShieldTime=32..}]

execute as @e[x=0,type=armor_stand,tag=BeeShieldDisplay,scores={BeeShieldTime=20}] run data modify storage rr_powerups:beeshieldpos x prepend from entity @s Pos[0]
execute as @e[x=0,type=armor_stand,tag=BeeShieldDisplay,scores={BeeShieldTime=20}] run data modify storage rr_powerups:beeshieldpos y prepend from entity @s Pos[1]
execute as @e[x=0,type=armor_stand,tag=BeeShieldDisplay,scores={BeeShieldTime=20}] run data modify storage rr_powerups:beeshieldpos z prepend from entity @s Pos[2]
execute as @e[x=0,type=armor_stand,tag=BeeShieldDisplay,scores={BeeShieldTime=20}] run scoreboard players add @e[x=0,type=armor_stand,tag=Selection] beeShieldCount 1
execute as @e[x=0,type=armor_stand,tag=BeeShieldDisplay,scores={BeeShieldTime=20}] run kill @s

#Bees teams/angry
execute as @e[x=0,type=bee,tag=BlueBee,tag=!beeChecked] run team join Blue
execute as @e[x=0,type=bee,tag=YellowBee,tag=!beeChecked] run team join Yellow
execute as @e[x=0,type=bee,tag=!beeChecked] run attribute @s minecraft:generic.follow_range base set 100
execute as @e[x=0,type=bee,tag=!beeChecked] run data remove entity @s AngryAt
execute as @e[x=0,type=bee,tag=!beeChecked] run data merge entity @s {PortalCooldown:2147483647}
execute if entity @e[x=0,type=bee,tag=!beeChecked] run scoreboard players set $beetime BeeShieldTime 0
tag @e[x=0,type=bee,tag=!beeChecked] add beeChecked

scoreboard players add $beetime BeeShieldTime 1
execute if score $beetime BeeShieldTime matches 100 run scoreboard players set $beetime BeeShieldTime 0
execute if score $beetime BeeShieldTime matches 1 as @e[x=0,type=bee,tag=BlueBee] unless data entity @s AngryAt if entity @a[x=0,team=Yellow] at @s run summon snowball ~ ~1 ~ {Tags:["NullShield","BeeTick"],Motion:[0.0d,-1.0d,0.0d]}
execute if score $beetime BeeShieldTime matches 1 as @e[x=0,type=bee,tag=BlueBee] unless data entity @s AngryAt if entity @a[x=0,team=Yellow] at @s as @e[type=snowball,tag=BeeTick,limit=1,sort=nearest,distance=..1] at @s run data modify entity @s Owner set from entity @a[x=0,team=Yellow,limit=1,sort=nearest] UUID
execute if score $beetime BeeShieldTime matches 1 as @e[x=0,type=bee,tag=YellowBee] unless data entity @s AngryAt if entity @a[x=0,team=Blue] at @s run summon snowball ~ ~1 ~ {Tags:["NullShield","BeeTick"],Motion:[0.0d,-1.0d,0.0d]}
execute if score $beetime BeeShieldTime matches 1 as @e[x=0,type=bee,tag=YellowBee] unless data entity @s AngryAt if entity @a[x=0,team=Blue] at @s as @e[type=snowball,tag=BeeTick,limit=1,sort=nearest,distance=..1] at @s run data modify entity @s Owner set from entity @a[x=0,team=Blue,limit=1,sort=nearest] UUID
execute if score $beetime BeeShieldTime matches 1 as @e[x=0,type=bee] run data merge entity @s {AngerTime:1000}
execute if score $beetime BeeShieldTime matches 3 run kill @e[x=0,type=snowball,tag=BeeTick]

#kill bees that have stung
kill @e[x=0,type=bee,nbt={HasStung:1b}]

#kill bees that are in the void
execute as @e[x=0,type=bee,predicate=rr_powerups:bee_void] run data merge entity @s {DeathTime:19s}
execute as @e[x=0,type=bee,predicate=rr_powerups:bee_void] at @s run tp @s ~ -100 ~
kill @e[x=0,type=bee,predicate=rr_powerups:bee_void]