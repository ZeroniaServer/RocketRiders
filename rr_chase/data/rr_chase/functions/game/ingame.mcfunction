#Leave midgame
execute if entity @s[tag=!SMActive] run function rr_chase:game/leavemidgame

#Item RNG (exception for arrows)
tag @s add givenArrows
tag @s add givenArrowsTwice
scoreboard players add @s RandomItem 1
execute if score @s[tag=!Minute] RandomItem = @s[tag=!Minute] MaxItemTime if entity @s[tag=!gaveFirstItem] as @a[predicate=custom:indimension,team=Blue] run function items:util/givearrows
execute if score @s[tag=!Minute] RandomItem = @s[tag=!Minute] MaxItemTime run function items:giverandom
execute if score @s[tag=!Minute] RandomItem > @s[tag=!Minute] MaxItemTime run scoreboard players set @s RandomItem 1
execute if entity @s[tag=Minute] run function items:minutemix

#Arrows on death - DISABLED AS OF 1.2.0
# execute if entity @s[scores={gametime=2..}] as @a[predicate=custom:indimension,team=Blue,scores={deathCooldown=1}] run function items:util/givearrows

#Flagpole
fill 12 64 64 12 71 64 oak_fence replace #custom:basereplace

#Clear behind/in front
fill -14 64 66 39 74 70 air replace white_wool
fill -14 64 66 39 74 70 air replace black_wool
fill -14 64 65 39 74 70 air replace oak_fence

fill -14 64 62 39 74 58 air replace white_wool
fill -14 64 62 39 74 58 air replace black_wool
fill -14 64 63 39 74 58 air replace oak_fence

scoreboard players add FlagWave FlagScore 1

#Actionbar for who's in the lead
execute as @p[team=Blue,tag=InLead,distance=0..22,tag=!DelayActionbar] run title @s actionbar [{"text":"You're in the lead! Run to the Finish Flag to win!","color":"white","bold":true}]

#Crystals
function rr_chase:chaseblocks/chasecrystal

# Respawn chase blocks
scoreboard players set $ChaseBlockCheck CmdData 0
execute as @e[predicate=custom:indimension,type=marker,tag=ChaseBlock] run scoreboard players add $ChaseBlockCheck CmdData 1
execute if score $ChaseBlockCheck CmdData matches ..145 run scoreboard players set $ChaseBlocks CmdData 5
execute if score $ChaseBlockCheck CmdData matches ..145 run function rr_chase:chaseblocks/spawn

#Make flag wave around
execute if score FlagWave FlagScore matches 20 run place template finish_flag1 8 70 63
execute if score FlagWave FlagScore matches 40.. run place template finish_flag2 8 70 63
execute if score FlagWave FlagScore matches 40.. run scoreboard players reset FlagWave FlagScore

#Chase Blocks
function rr_chase:chaseblocks/pickup

#Place stairs
execute positioned 10 63 66 run function rr_chase:arenaclear/stairleft
execute positioned 14 63 66 run function rr_chase:arenaclear/stairright

#Custom prevention message
execute as @a[predicate=custom:indimension,tag=preventionMSG] run tellraw @s ["",{"text":"Unable to spawn missile inside of obsidian.","color":"red"}]
tag @a[predicate=custom:indimension,tag=preventionMSG] remove preventionMSG

#Util overwrites
function rr_chase:game/overwrite

#Bossbar for who's in the lead
scoreboard players add @a[predicate=custom:indimension,team=Blue] deathCooldown 0
bossbar set rr:startgame players @a[predicate=custom:indimension,team=Lobby]
bossbar set rr_chase:lead players @a[predicate=custom:indimension,team=!Lobby]
bossbar set rr_chase:lead color red
tag @a[predicate=custom:indimension,team=Blue] remove InLead
execute if entity @s[tag=!Hardcore] as @a[predicate=custom:indimension,team=Blue] at @s if entity @s[x=-15,dx=54,y=33,dy=40,z=-74,dz=28] run tag @s add onBlue
execute if entity @s[tag=Hardcore] as @a[predicate=custom:indimension,team=Blue] at @s if entity @s[x=-15,dx=54,y=33,dy=40,z=-74,dz=10] run tag @s add onBlue
execute positioned 12 64 65 run tag @p[team=Blue,predicate=custom:belowroof,tag=!onBlue,scores={deathCooldown=0}] add InLead
execute if entity @p[team=Blue,tag=InLead] run bossbar set rr_chase:lead name ["",{"selector":"@p[team=Blue,tag=InLead]","color":"dark_red","bold":true},{"text":" is in the lead!","color":"red"}]
execute unless entity @p[team=Blue,tag=InLead] run bossbar set rr_chase:lead name ["",{"text":"No one is in the lead!","color":"red"}]
execute unless entity @p[team=Blue,tag=InLead] run bossbar set rr_chase:lead value 0
execute positioned 12 64 65 if entity @p[team=Blue,tag=InLead,distance=100..110] run bossbar set rr_chase:lead value 1
execute positioned 12 64 65 if entity @p[team=Blue,tag=InLead,distance=89..99] run bossbar set rr_chase:lead value 2
execute positioned 12 64 65 if entity @p[team=Blue,tag=InLead,distance=78..88] run bossbar set rr_chase:lead value 3
execute positioned 12 64 65 if entity @p[team=Blue,tag=InLead,distance=67..77] run bossbar set rr_chase:lead value 4
execute positioned 12 64 65 if entity @p[team=Blue,tag=InLead,distance=56..66] run bossbar set rr_chase:lead value 5
execute positioned 12 64 65 if entity @p[team=Blue,tag=InLead,distance=45..55] run bossbar set rr_chase:lead value 6
execute positioned 12 64 65 if entity @p[team=Blue,tag=InLead,distance=34..44] run bossbar set rr_chase:lead value 7
execute positioned 12 64 65 if entity @p[team=Blue,tag=InLead,distance=23..33] run bossbar set rr_chase:lead value 8
execute positioned 12 64 65 if entity @p[team=Blue,tag=InLead,distance=12..22] run bossbar set rr_chase:lead value 9
execute positioned 12 64 65 if entity @p[team=Blue,tag=InLead,distance=0..11] run bossbar set rr_chase:lead value 10

#Win
execute positioned 12 64 65 if entity @s[scores={gametime=0..4}] run tp @a[predicate=custom:indimension,team=Blue,distance=..2] 12 64 -66 0 0
execute positioned 12 64 65 run tag @a[predicate=custom:indimension,team=Blue,distance=..2,limit=1] add Winner
execute as @a[predicate=custom:indimension,team=Blue,tag=Winner,limit=1] run title @s actionbar {"text":""}
execute if entity @a[predicate=custom:indimension,team=Blue,tag=Winner,limit=1] run tag @a[predicate=custom:indimension,team=Blue,tag=!Winner] add Loser
execute if entity @a[predicate=custom:indimension,team=Blue,tag=Winner,limit=1] run function rr_chase:game/win