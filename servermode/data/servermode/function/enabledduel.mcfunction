execute if score $server_mode global matches 2 run return run tellraw @s [{"text":"Duel Server Mode is already enabled!","color":"red"}]

tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add SMSwitch
execute unless score $server_mode global matches 2 run schedule function game:forcestop 2t append
scoreboard players set $server_mode global 2
scoreboard players set $max_players config 2
function game:config/reset
#tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add noYZELO
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add stopIfEmpty
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove ServerModeVoting
scoreboard players set $realms global 0
scoreboard players reset $extra_match_repetitions config
execute as @a[x=0] run function achievements:reset
function game:forcestop
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] store result score @s SetGamemode run scoreboard players get @e[x=0,type=armor_stand,tag=rr_duel,limit=1] gamemodeID
clear @a[x=0]
kill @e[x=0,type=armor_stand,tag=ParkourLB]
kill @e[x=0,type=text_display,tag=ParkourLB]
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
fill 67 208 3 63 208 3 air strict
function lobby:update_nav_book

scoreboard objectives add joinBlue dummy
scoreboard objectives add joinYellow dummy
scoreboard objectives add spectate dummy