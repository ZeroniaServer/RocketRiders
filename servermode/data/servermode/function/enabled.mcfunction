execute if score $server_mode global matches 1 run return run tellraw @s [{"text":"Vote Server Mode is already enabled!","color":"red"}]

tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add SMSwitch
scoreboard players set @e[x=0,type=armor_stand,tag=Selection,limit=1] PlayerCap 6
execute if score $server_mode global matches 2 run schedule function servermode:enabled 1t
scoreboard players set $server_mode global 1
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add noYZELO
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add stopIfEmpty
scoreboard players set $realms global 0
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove Repeat
scoreboard players set @e[x=0,type=armor_stand,tag=Selection,limit=1] RepeatSettings 1
function lobby:close_modification_room
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
fill 67 208 3 63 208 3 air strict
function game:forcestop
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function arenaclear:globaldefaults
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function modifiers:disablemodifiers
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function arenaclear:refreshcustomizer
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function arenaclear:refreshsigns
function arenaclear:hidemodroom
data modify storage rocketriders:navbook modroom set value [""]
data modify storage rocketriders:navbook description set value {text:"\nRocket Riders is a tactical game where two teams ride missiles to the enemy base to destroy their portals.\n\nAfter each game, you can vote between several gamemodes, modifiers, and base designs to play with for the next round.",color:"dark_gray"}
data modify storage rocketriders:navbook parkourtips set value [""]

scoreboard players set $disable_cannoning config 1

scoreboard objectives add joinBlue dummy
scoreboard objectives add joinYellow dummy
scoreboard objectives add spectate dummy