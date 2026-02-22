execute if score $server_mode global matches -1 run return run tellraw @s [{"text":"Custom Server Mode is already enabled!","color":"red"}]

function game:forcestop
scoreboard players set @e[x=0,type=armor_stand,tag=Selection,limit=1] PlayerCap 6
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add SMSwitch
scoreboard players set $server_mode global -1
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add stopIfEmpty
#tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add noYZELO
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove ServerModeVoting
scoreboard players set $realms global 0
scoreboard players reset $extra_match_repetitions config
function lobby:open_modification_room
clear @a[x=0]
kill @e[x=0,type=armor_stand,tag=ParkourLB]
kill @e[x=0,type=text_display,tag=ParkourLB]
kill @e[x=0,type=#custom:crystal,tag=CrusadeEntity]
setblock -31 190 17 air
setblock -32 190 17 air
setblock -31 190 16 air
setblock -31 191 17 air
setblock -31 190 18 air
setblock -30 190 17 air
setblock -31 189 17 air
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function lobby:credits/stop
fill 67 208 3 63 208 3 air strict
schedule function game:forcestop 2t append
# schedule function servermode:forceclear 3t append
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function arenaclear:globaldefaults
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function modifiers:disablemodifiers
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function arenaclear:refreshsigns
function lobby:update_nav_book

scoreboard objectives add joinBlue dummy
scoreboard objectives add joinYellow dummy
scoreboard objectives add spectate dummy