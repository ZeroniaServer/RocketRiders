execute if entity @e[x=0,type=armor_stand,tag=Selection,scores={servermode=2}] run return run tellraw @s [{"text":"Duel Server Mode is already enabled!","color":"red"}]

tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add SMSwitch
execute unless score @e[x=0,type=armor_stand,tag=Selection,limit=1] servermode matches 2 run schedule function game:forcestop 2t append
scoreboard players set @e[x=0,type=armor_stand,tag=Selection,limit=1] servermode 2
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add noYZELO
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add stopIfEmpty
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove ServerModeVoting
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove realms
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove SMCustom
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove Repeat
scoreboard players set @e[x=0,type=armor_stand,tag=Selection,limit=1] RepeatSettings 1
fill -57 201 84 -70 201 72 tinted_glass replace air
fill -57 198 84 -70 198 72 blackstone replace air
execute as @a[x=0] run function achievements:reset
function game:forcestop
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] store result score @s SetGamemode run scoreboard players get @e[x=0,type=armor_stand,tag=rr_duel,limit=1] gamemodeID
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
function lobby:credits/stop
function arenaclear:hidemodroom
fill -29 196 22 -33 196 22 air
data modify storage rocketriders:navbook modroom set value [""]
data modify storage rocketriders:navbook description set value {text:"\nRocket Riders is a tactical game where two teams ride missiles to the enemy base to destroy their portals.\n\nIn 1v1 Duel Mode, players challenge each other to a best of three, one-on-one tournament with sets of 12 random items.",color:"dark_gray"}
data modify storage rocketriders:navbook parkourtips set value [""]