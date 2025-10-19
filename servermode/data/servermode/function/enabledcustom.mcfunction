execute if score $server_mode global matches -1 run return run tellraw @s [{"text":"Custom Server Mode is already enabled!","color":"red"}]

function game:forcestop
scoreboard players set @e[x=0,type=armor_stand,tag=Selection,limit=1] PlayerCap 6
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add SMSwitch
scoreboard players set $server_mode global -1
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add stopIfEmpty
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add noYZELO
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove ServerModeVoting
scoreboard players set $realms global 0
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove Repeat
scoreboard players set @e[x=0,type=armor_stand,tag=Selection,limit=1] RepeatSettings 1
function lobby:open_modification_room
clear @a[x=0]
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
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function lobby:credits/stop
fill 67 208 3 63 208 3 air strict
schedule function game:forcestop 2t append
# schedule function servermode:forceclear 3t append
function arenaclear:unhidemodroom
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function arenaclear:globaldefaults
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function modifiers:disablemodifiers
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function arenaclear:refreshsigns
data modify storage rocketriders:navbook modroom set value ["\n",{text:"* ",color:"gray",click_event:{action:"run_command",command:"/trigger LobbyWarp set 2"},hover_event:{action:"show_text",value:{color:"gray",text:"Click to teleport to the Modification Room."}}},{text:"Modification Room",color:"dark_purple",hover_event:{action:"show_text",value:{text:"Click to teleport to the Modification Room.",italic:true}},click_event:{action:"run_command",command:"/trigger LobbyWarp set 2"}}]
data modify storage rocketriders:navbook description set value {text:"\nRocket Riders is a tactical game where two teams ride missiles to the enemy base to destroy their portals.\n\nIn the Modification Room, you can easily customize the game with many gamemodes, modifiers, and other settings to play with.",color:"dark_gray"}
data modify storage rocketriders:navbook parkourtips set value [""]

scoreboard players set $disable_cannoning config 0

scoreboard objectives add joinBlue dummy
scoreboard objectives add joinYellow dummy
scoreboard objectives add spectate dummy