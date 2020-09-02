#Leave midgame
function game:leavemidgame

#Item RNG (exception for arrows) and spawnpoints
tag @s add givenArrows
tag @s add givenArrowsTwice
scoreboard players add @s RandomItem 1
execute if score @s[tag=!Minute] RandomItem = @s[tag=!Minute] MaxItemTime if entity @s[tag=!gaveFirstItem] as @a[team=Blue] run function items:util/givearrows
execute if score @s[tag=!Minute] RandomItem = @s[tag=!Minute] MaxItemTime run function items:giverandom
execute if score @s[tag=!Minute] RandomItem > @s[tag=!Minute] MaxItemTime run scoreboard players reset @s RandomItem
spawnpoint @a[team=Blue] 12 64 -66 0
execute if entity @s[tag=Minute] run function items:minutemix

#Arrows on death
execute as @s[scores={gametime=2..}] as @a[team=Blue,scores={death=1..}] run function items:util/givearrows
scoreboard players set @a[scores={death=1..}] death 0

#Arrow/Canopy antidupe (works regardless of Item Stacking)
execute as @a[team=Blue] store result score @s HasArrows run clear @s arrow 0
clear @a[team=Blue,scores={HasArrows=5..}] arrow 1

execute as @a[team=Blue] store result score @s HasPlat run clear @s ender_pearl 0
clear @a[team=Blue,scores={HasPlat=4..}] ender_pearl 1

#Flagpole
fill 12 64 65 12 71 65 oak_fence replace air

#Clear behind/in front
fill -14 64 66 39 74 70 air replace white_wool
fill -14 64 66 39 74 70 air replace black_wool
fill -14 64 66 39 74 70 air replace oak_fence

fill -14 64 62 39 74 58 air replace white_wool
fill -14 64 62 39 74 58 air replace black_wool
fill -14 64 64 39 74 58 air replace oak_fence

#Make flag wave around
scoreboard players add FlagWave FlagScore 1
execute if score FlagWave FlagScore matches 20 run setblock 12 71 64 structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"finish_flag1"}
execute if score FlagWave FlagScore matches 20 run setblock 12 70 64 redstone_block
execute if score FlagWave FlagScore matches 40.. run setblock 12 71 64 structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"finish_flag2"}
execute if score FlagWave FlagScore matches 40.. run setblock 12 70 64 redstone_block
execute if score FlagWave FlagScore matches 40.. run scoreboard players reset FlagWave FlagScore

#Overwrite vortex owner (makes these hostile towards team members)
execute as @a[team=Blue] at @s run tag @e[type=egg,sort=nearest,limit=1,distance=..5,tag=BlueVortex] add YellowVortex
execute as @a[team=Blue] at @s run tag @e[type=egg,sort=nearest,limit=1,distance=..5,tag=BlueVortex] remove BlueVortex

#TODO figure out how to do something like that for novas :(

#Bossbar for who's in the lead
bossbar set rr_chase:lead players @a[team=!Lobby]
tag @a[team=Blue] remove InLead
execute positioned 12 64 65 run tag @p[team=Blue,predicate=custom:belowroof,tag=!onBlue] add InLead
execute if entity @p[team=Blue,tag=InLead] run bossbar set rr_chase:lead name ["",{"selector":"@p[team=Blue,tag=InLead]","color":"blue","bold":"true"},{"text":" is in the lead!","color":"dark_aqua"}]
execute unless entity @p[team=Blue,tag=InLead] run bossbar set rr_chase:lead name ["",{"text":"No one is in the lead!","color":"dark_aqua"}]
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
execute positioned 12 64 65 run tag @a[team=Blue,distance=..2,limit=1] add Winner
execute if entity @a[team=Blue,tag=Winner,limit=1] run tag @a[team=Blue,tag=!Winner] add Loser
execute if entity @a[team=Blue,tag=Winner,limit=1] run function rr_chase:game/win