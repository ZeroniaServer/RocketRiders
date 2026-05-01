tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add SMSwitch
scoreboard players set $server_mode global 0
scoreboard players reset $max_players config
function game:config/reset
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function game:tipreset
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove ServerModeVoting
scoreboard players set $realms global 0
scoreboard players set @e[x=0,type=armor_stand,tag=Selection,limit=1] modifierID 0
function lobby:open_modification_room
execute as @a[x=0] run function achievements:roots
clear @a[x=0]
schedule function game:forcestop 2t append
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] store result score @s SetGamemode run scoreboard players get @e[x=0,type=armor_stand,tag=rr_normal,limit=1] gamemodeID
# schedule function servermode:forceclear 3t append
function lobby:parkour/parkoursetup
function lobby:credits/stop
schedule function servermode:fixduel 2t append
function lobby:update_nav_book

scoreboard objectives remove joinBlue
scoreboard objectives remove joinYellow
scoreboard objectives remove spectate