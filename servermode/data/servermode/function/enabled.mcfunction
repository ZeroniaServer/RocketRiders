execute if entity @e[x=0,type=armor_stand,tag=Selection,scores={servermode=1}] run return run tellraw @s [{"text":"Vote Server Mode is already enabled!","color":"red"}]

tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add SMSwitch
scoreboard players set @e[x=0,type=armor_stand,tag=Selection,limit=1] PlayerCap 6
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={servermode=2}] run schedule function servermode:enabled 1t
scoreboard players set @e[x=0,type=armor_stand,tag=Selection,limit=1] servermode 1
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add noYZELO
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add stopIfEmpty
scoreboard players set $realms global 0
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove Repeat
scoreboard players set @e[x=0,type=armor_stand,tag=Selection,limit=1] RepeatSettings 1
fill -57 201 84 -70 201 72 tinted_glass replace #custom:modification_room_pool_blocks strict
fill -57 200 84 -70 200 72 water[level=8] replace #custom:modification_room_pool_blocks strict
fill -57 198 84 -70 198 72 blackstone replace air
execute as @a[x=0] run function achievements:reset
clear @a
kill @e[x=0,type=armor_stand,tag=ParkourLB]
kill @e[x=0,type=area_effect_cloud,tag=ParkourLB]
kill @e[x=0,type=#custom:crystal,tag=CrusadeEntity]
setblock -31 190 17 air
setblock -32 190 17 air
setblock -31 190 16 air
setblock -31 191 17 air
setblock -31 190 18 air
setblock -30 190 17 air
setblock -31 189 17 air
function lobby:cancelsettings/reset
setblock -57 203 78 air
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function lobby:credits/stop
fill -29 196 22 -33 196 22 air
function game:forcestop
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function arenaclear:globaldefaults
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function modifiers:disablemodifiers
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function arenaclear:refreshcustomizer
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function arenaclear:refreshsigns
function arenaclear:hidemodroom
data modify storage rocketriders:navbook modroom set value [""]
data modify storage rocketriders:navbook description set value {text:"\nRocket Riders is a tactical game where two teams ride missiles to the enemy base to destroy their portals.\n\nAfter each game, you can vote between several gamemodes, modifiers, and base designs to play with for the next round.",color:"dark_gray"}
data modify storage rocketriders:navbook parkourtips set value [""]