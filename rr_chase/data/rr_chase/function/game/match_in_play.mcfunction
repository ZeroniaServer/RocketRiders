#Leave midgame
execute unless predicate rr:is_cubekrowd run function rr_chase:game/leavemidgame

#Item RNG (exception for arrows)
tag @s add givenArrows
tag @s add givenArrowsTwice
scoreboard players add @s RandomItem 1
execute if score @s[tag=!Minute] RandomItem = @s[tag=!Minute] MaxItemTime if entity @s[tag=!gaveFirstItem] as @a[x=0,team=Blue] run function items:util/givearrows
execute if score @s[tag=!Minute] RandomItem = @s[tag=!Minute] MaxItemTime run function items:giverandom
execute if score @s[tag=!Minute] RandomItem > @s[tag=!Minute] MaxItemTime run scoreboard players set @s RandomItem 1
execute if entity @s[tag=Minute] run function items:minutemix

#glass regeneration
execute as @e[x=0,type=marker,tag=airDetect,limit=1] at @s run function rr_chase:game/airdetect

#Arrows on death - DISABLED AS OF 1.2.0
# execute if score $game_duration global matches 2.. as @a[x=0,team=Blue,scores={deathCooldown=1}] run function items:util/givearrows

#Actionbar for who's in the lead
execute as @p[team=Blue,tag=InLead,distance=0..22,tag=!DelayActionbar] run title @s actionbar [{"text":"You're in the lead! Run to the Finish Flag to win!","color":"white","bold":true}]

#Crystals
function rr_chase:chaseblocks/chasecrystal

# Respawn chase blocks
scoreboard players set $ChaseBlockCheck CmdData 0
execute as @e[x=0,type=marker,tag=ChaseBlock] run scoreboard players add $ChaseBlockCheck CmdData 1
execute if score $ChaseBlockCheck CmdData matches ..145 run scoreboard players set $ChaseBlocks CmdData 5
execute if score $ChaseBlockCheck CmdData matches ..145 run function rr_chase:chaseblocks/spawn

#Chase Blocks
function rr_chase:chaseblocks/pickup

#Custom prevention message
execute as @a[x=0,tag=preventionMSG] run tellraw @s ["",{"text":"Unable to spawn missile inside of obsidian.","color":"red"}]
tag @a[x=0,tag=preventionMSG] remove preventionMSG

#Bossbar for who's in the lead
scoreboard objectives setdisplay list flag_tablist_display
scoreboard players add @a[x=0,team=Blue] deathCooldown 0
bossbar set rr:startgame players @a[x=0,team=Lobby]
bossbar set rr_chase:lead players @a[x=0,team=!Lobby]
bossbar set rr_chase:lead color red
tag @a[x=0,team=Blue] remove InLead
execute unless predicate game:modifiers/hardcore/on as @a[x=0,team=Blue] at @s if entity @s[x=-15,dx=54,y=33,dy=40,z=-74,dz=28] run tag @s add onBlue
execute if predicate game:modifiers/hardcore/on as @a[x=0,team=Blue] at @s if entity @s[x=-15,dx=54,y=33,dy=40,z=-74,dz=10] run tag @s add onBlue
execute positioned 12 64 65 run tag @p[team=Blue,predicate=custom:belowroof,tag=!onBlue,predicate=custom:alive] add InLead
scoreboard players display numberformat @a[x=0,tag=!InLead] flag_tablist_display blank
scoreboard players display numberformat @a[limit=1,x=0,tag=InLead] flag_tablist_display fixed "🏁"
effect clear @a[x=0,tag=!InLead] glowing
effect give @a[limit=1,x=0,tag=InLead] glowing infinite 0 true
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
execute positioned 12 64 65 if score $game_duration global matches 0..4 run tp @a[team=Blue,distance=..2] 12 64 -66 0 0
execute positioned 12 64 65 run tag @a[team=Blue,distance=..2,limit=1] add Winner
execute as @a[x=0,team=Blue,tag=Winner,limit=1] run title @s actionbar {"text":""}
execute if entity @a[x=0,team=Blue,tag=Winner,limit=1] run tag @a[x=0,team=Blue,tag=!Winner] add Loser
execute if entity @a[x=0,team=Blue,tag=Winner,limit=1] run function rr_chase:game/win