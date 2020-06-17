#bee shield
execute as @a[scores={DrinkHoney=1..},team=Yellow] at @s run summon armor_stand ~ ~ ~ {Tags:["BeeShieldDisplay","YellowBee"],Invisible:1b,Invulnerable:1b,Silent:1b,DisabledSlots:4144959}
execute as @a[scores={DrinkHoney=1..},team=Blue] at @s run summon armor_stand ~ ~ ~ {Tags:["BeeShieldDisplay","BlueBee"],Invisible:1b,Invulnerable:1b,Silent:1b,DisabledSlots:4144959}
scoreboard players add @e[tag=BeeShieldDisplay] BeeShieldTime 1
execute as @a[scores={DrinkHoney=1..}] at @s anchored eyes run tp @e[tag=BeeShieldDisplay,scores={BeeShieldTime=1},distance=..4,limit=1,sort=nearest] @s
execute as @a[scores={DrinkHoney=1..}] at @s as @e[tag=BeeShieldDisplay,scores={BeeShieldTime=1},distance=..4,limit=1,sort=nearest] at @s run function rr_powerups:everytick/projectile
clear @a glass_bottle
scoreboard players reset @a DrinkHoney
replaceitem entity @e[tag=BeeShieldDisplay,scores={BeeShieldTime=1}] armor.head honey_block
execute as @e[tag=BeeShieldDisplay] at @s run playsound minecraft:block.honey_block.slide block @a ~ ~ ~ 2 0.8
execute as @e[tag=BeeShieldDisplay] at @s run particle minecraft:block honey_block ~ ~ ~ 0 0 0 1 10

#placement (animations etc)
execute as @e[tag=BeeShieldDisplay] at @s if entity @s[x=-12,y=36,z=-74,dx=48,dy=25] run kill @s
execute as @e[tag=BeeShieldDisplay] at @s if entity @s[x=-12,y=36,z=74,dx=48,dy=25] run kill @s
execute as @e[tag=BlueBee,scores={BeeShieldTime=20}] at @s run summon area_effect_cloud ~ ~3 ~ {Tags:["BBeeShieldDisplay","animBshield"],Duration:2000000000}
execute as @e[tag=YellowBee,scores={BeeShieldTime=20}] at @s run summon area_effect_cloud ~ ~3 ~ {Tags:["YBeeShieldDisplay","animBshield"],Duration:2000000000}
scoreboard players add @e[tag=animBshield] BeeShieldTime 1

##Blue animation
execute as @e[tag=BBeeShieldDisplay,scores={BeeShieldTime=1}] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-2,posY:-4,posZ:0,name:"minecraft:bees_blue_stage1"}
execute as @e[tag=BBeeShieldDisplay,scores={BeeShieldTime=1}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[tag=BBeeShieldDisplay,scores={BeeShieldTime=1}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[tag=BBeeShieldDisplay,scores={BeeShieldTime=1}] at @s run fill ~ ~ ~ ~ ~-1 ~ air
execute as @e[tag=BBeeShieldDisplay,scores={BeeShieldTime=3}] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-2,posY:-4,posZ:0,name:"minecraft:bees_blue_stage2"}
execute as @e[tag=BBeeShieldDisplay,scores={BeeShieldTime=3}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[tag=BBeeShieldDisplay,scores={BeeShieldTime=3}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[tag=BBeeShieldDisplay,scores={BeeShieldTime=3}] at @s run fill ~ ~ ~ ~ ~-1 ~ air
execute as @e[tag=BBeeShieldDisplay,scores={BeeShieldTime=5}] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-2,posY:-4,posZ:0,name:"minecraft:bees_blue_stage3"}
execute as @e[tag=BBeeShieldDisplay,scores={BeeShieldTime=5}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[tag=BBeeShieldDisplay,scores={BeeShieldTime=5}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[tag=BBeeShieldDisplay,scores={BeeShieldTime=5}] at @s run fill ~ ~ ~ ~ ~-1 ~ air
execute as @e[tag=BBeeShieldDisplay,scores={BeeShieldTime=7}] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-2,posY:-4,posZ:0,name:"minecraft:bees_blue_stage4"}
execute as @e[tag=BBeeShieldDisplay,scores={BeeShieldTime=7}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[tag=BBeeShieldDisplay,scores={BeeShieldTime=7}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[tag=BBeeShieldDisplay,scores={BeeShieldTime=7}] at @s run fill ~ ~ ~ ~ ~-1 ~ air
execute as @e[tag=BBeeShieldDisplay,scores={BeeShieldTime=9}] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-2,posY:-4,posZ:0,name:"minecraft:bees_blue_stage5"}
execute as @e[tag=BBeeShieldDisplay,scores={BeeShieldTime=9}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[tag=BBeeShieldDisplay,scores={BeeShieldTime=9}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[tag=BBeeShieldDisplay,scores={BeeShieldTime=9}] at @s run fill ~ ~ ~ ~ ~-1 ~ air
execute as @e[tag=BBeeShieldDisplay,scores={BeeShieldTime=21}] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-2,posY:-4,posZ:0,name:"minecraft:bees_blue_stage6"}
execute as @e[tag=BBeeShieldDisplay,scores={BeeShieldTime=21}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[tag=BBeeShieldDisplay,scores={BeeShieldTime=21}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[tag=BBeeShieldDisplay,scores={BeeShieldTime=21}] at @s run setblock ~ ~ ~ air
execute as @e[tag=BBeeShieldDisplay,scores={BeeShieldTime=23}] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-2,posY:-4,posZ:0,name:"minecraft:bees_blue_stage7"}
execute as @e[tag=BBeeShieldDisplay,scores={BeeShieldTime=23}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[tag=BBeeShieldDisplay,scores={BeeShieldTime=23}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[tag=BBeeShieldDisplay,scores={BeeShieldTime=24}] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-2,posY:-4,posZ:0,name:"minecraft:bees_blue_stage8"}
execute as @e[tag=BBeeShieldDisplay,scores={BeeShieldTime=24}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[tag=BBeeShieldDisplay,scores={BeeShieldTime=24}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[tag=BBeeShieldDisplay,scores={BeeShieldTime=26}] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-2,posY:-4,posZ:0,name:"minecraft:bees_blue_stage9"}
execute as @e[tag=BBeeShieldDisplay,scores={BeeShieldTime=26}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[tag=BBeeShieldDisplay,scores={BeeShieldTime=26}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[tag=BBeeShieldDisplay,scores={BeeShieldTime=28}] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-2,posY:-4,posZ:0,name:"minecraft:bees_blue_stage10"}
execute as @e[tag=BBeeShieldDisplay,scores={BeeShieldTime=28}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[tag=BBeeShieldDisplay,scores={BeeShieldTime=28}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[tag=BBeeShieldDisplay,scores={BeeShieldTime=30}] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-2,posY:-4,posZ:0,name:"minecraft:bees_blue_stage11"}
execute as @e[tag=BBeeShieldDisplay,scores={BeeShieldTime=30}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[tag=BBeeShieldDisplay,scores={BeeShieldTime=30}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[tag=BBeeShieldDisplay,scores={BeeShieldTime=32}] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-2,posY:-4,posZ:0,name:"minecraft:bees_blue_full"}
execute as @e[tag=BBeeShieldDisplay,scores={BeeShieldTime=32}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[tag=BBeeShieldDisplay,scores={BeeShieldTime=32}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]


##Yellow animation
execute as @e[tag=YBeeShieldDisplay,scores={BeeShieldTime=1}] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-2,posY:-4,posZ:0,name:"minecraft:bees_yellow_stage1"}
execute as @e[tag=YBeeShieldDisplay,scores={BeeShieldTime=1}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[tag=YBeeShieldDisplay,scores={BeeShieldTime=1}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[tag=YBeeShieldDisplay,scores={BeeShieldTime=1}] at @s run fill ~ ~ ~ ~ ~-1 ~ air
execute as @e[tag=YBeeShieldDisplay,scores={BeeShieldTime=3}] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-2,posY:-4,posZ:0,name:"minecraft:bees_yellow_stage2"}
execute as @e[tag=YBeeShieldDisplay,scores={BeeShieldTime=3}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[tag=YBeeShieldDisplay,scores={BeeShieldTime=3}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[tag=YBeeShieldDisplay,scores={BeeShieldTime=3}] at @s run fill ~ ~ ~ ~ ~-1 ~ air
execute as @e[tag=YBeeShieldDisplay,scores={BeeShieldTime=5}] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-2,posY:-4,posZ:0,name:"minecraft:bees_yellow_stage3"}
execute as @e[tag=YBeeShieldDisplay,scores={BeeShieldTime=5}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[tag=YBeeShieldDisplay,scores={BeeShieldTime=5}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[tag=YBeeShieldDisplay,scores={BeeShieldTime=5}] at @s run fill ~ ~ ~ ~ ~-1 ~ air
execute as @e[tag=YBeeShieldDisplay,scores={BeeShieldTime=7}] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-2,posY:-4,posZ:0,name:"minecraft:bees_yellow_stage4"}
execute as @e[tag=YBeeShieldDisplay,scores={BeeShieldTime=7}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[tag=YBeeShieldDisplay,scores={BeeShieldTime=7}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[tag=YBeeShieldDisplay,scores={BeeShieldTime=7}] at @s run fill ~ ~ ~ ~ ~-1 ~ air
execute as @e[tag=YBeeShieldDisplay,scores={BeeShieldTime=9}] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-2,posY:-4,posZ:0,name:"minecraft:bees_yellow_stage5"}
execute as @e[tag=YBeeShieldDisplay,scores={BeeShieldTime=9}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[tag=YBeeShieldDisplay,scores={BeeShieldTime=9}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[tag=YBeeShieldDisplay,scores={BeeShieldTime=9}] at @s run fill ~ ~ ~ ~ ~-1 ~ air
execute as @e[tag=YBeeShieldDisplay,scores={BeeShieldTime=21}] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-2,posY:-4,posZ:0,name:"minecraft:bees_yellow_stage6"}
execute as @e[tag=YBeeShieldDisplay,scores={BeeShieldTime=21}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[tag=YBeeShieldDisplay,scores={BeeShieldTime=21}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[tag=YBeeShieldDisplay,scores={BeeShieldTime=21}] at @s run setblock ~ ~ ~ air
execute as @e[tag=YBeeShieldDisplay,scores={BeeShieldTime=23}] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-2,posY:-4,posZ:0,name:"minecraft:bees_yellow_stage7"}
execute as @e[tag=YBeeShieldDisplay,scores={BeeShieldTime=23}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[tag=YBeeShieldDisplay,scores={BeeShieldTime=23}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[tag=YBeeShieldDisplay,scores={BeeShieldTime=24}] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-2,posY:-4,posZ:0,name:"minecraft:bees_yellow_stage8"}
execute as @e[tag=YBeeShieldDisplay,scores={BeeShieldTime=24}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[tag=YBeeShieldDisplay,scores={BeeShieldTime=24}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[tag=YBeeShieldDisplay,scores={BeeShieldTime=26}] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-2,posY:-4,posZ:0,name:"minecraft:bees_yellow_stage9"}
execute as @e[tag=YBeeShieldDisplay,scores={BeeShieldTime=26}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[tag=YBeeShieldDisplay,scores={BeeShieldTime=26}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[tag=YBeeShieldDisplay,scores={BeeShieldTime=28}] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-2,posY:-4,posZ:0,name:"minecraft:bees_yellow_stage10"}
execute as @e[tag=YBeeShieldDisplay,scores={BeeShieldTime=28}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[tag=YBeeShieldDisplay,scores={BeeShieldTime=28}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[tag=YBeeShieldDisplay,scores={BeeShieldTime=30}] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-2,posY:-4,posZ:0,name:"minecraft:bees_yellow_stage11"}
execute as @e[tag=YBeeShieldDisplay,scores={BeeShieldTime=30}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[tag=YBeeShieldDisplay,scores={BeeShieldTime=30}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[tag=YBeeShieldDisplay,scores={BeeShieldTime=32}] at @s run setblock ~ ~ ~ structure_block[mode=load]{mode:"LOAD",posX:-2,posY:-4,posZ:0,name:"minecraft:bees_yellow_full"}
execute as @e[tag=YBeeShieldDisplay,scores={BeeShieldTime=32}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]
execute as @e[tag=YBeeShieldDisplay,scores={BeeShieldTime=32}] at @s run setblock ~ ~-1 ~ observer[facing=down,powered=true]



#Sounds and particles for the shield animation
execute as @e[tag=animBshield,scores={BeeShieldTime=1}] at @s run playsound block.beehive.enter player @a ~ ~ ~ 1.5 1.3
execute as @e[tag=animBshield,scores={BeeShieldTime=3}] at @s run playsound block.beehive.enter player @a ~ ~ ~ 1.5 1.2
execute as @e[tag=animBshield,scores={BeeShieldTime=5}] at @s run playsound block.beehive.enter player @a ~ ~ ~ 1.5 1
execute as @e[tag=animBshield,scores={BeeShieldTime=7}] at @s run playsound block.beehive.enter player @a ~ ~ ~ 1.5 0.9
execute as @e[tag=animBshield,scores={BeeShieldTime=9}] at @s run playsound block.beehive.enter player @a ~ ~ ~ 1.5 0.8
execute as @e[tag=animBshield,scores={BeeShieldTime=21}] at @s run playsound block.honey_block.break player @a ~ ~ ~ 1.5 0.5
execute as @e[tag=animBshield,scores={BeeShieldTime=23}] at @s run playsound block.honey_block.break player @a ~ ~ ~ 1.5 0.6
execute as @e[tag=animBshield,scores={BeeShieldTime=24}] at @s run playsound block.honey_block.break player @a ~ ~ ~ 1.5 0.7
execute as @e[tag=animBshield,scores={BeeShieldTime=26}] at @s run playsound block.honey_block.break player @a ~ ~ ~ 1.5 0.8
execute as @e[tag=animBshield,scores={BeeShieldTime=21}] at @s run playsound block.glass.break player @a ~ ~ ~ 1.5 1.3
execute as @e[tag=animBshield,scores={BeeShieldTime=23}] at @s run playsound block.glass.break player @a ~ ~ ~ 1.5 1.2
execute as @e[tag=animBshield,scores={BeeShieldTime=32}] at @s run playsound block.grass.break player @a ~ ~ ~ 1.5 0.8
execute as @e[tag=animBshield,scores={BeeShieldTime=31}] at @s run particle block tnt ~ ~-2 ~ 0.2 0.2 0.2 0.2 40 force
execute as @e[tag=animBshield,scores={BeeShieldTime=31}] at @s run particle block honey_block ~ ~-2 ~ 1 1.5 0 0.1 200 force

#Kill animation AEC
kill @e[tag=animBshield,scores={BeeShieldTime=32..}]

execute as @e[tag=BeeShieldDisplay,scores={BeeShieldTime=20}] at @s run summon area_effect_cloud ~ ~ ~ {Duration:200000000,Tags:["BeeShield"]}
execute as @e[tag=BeeShieldDisplay,scores={BeeShieldTime=20}] run kill @s

#bees teams
team join Blue @e[type=bee,tag=BlueBee]
tag @e[type=bee,tag=BlueBee] remove BlueBee
team join Yellow @e[type=bee,tag=YellowBee]
tag @e[type=bee,tag=YellowBee] remove YellowBee

#glowing bees
execute as @e[type=bee] run effect give @s glowing 1000000 255 true

#kill bees
kill @e[type=bee,nbt={Anger:0}]
kill @e[type=bee,nbt={HasStung:1b}]