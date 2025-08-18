tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add SMSwitch
scoreboard players set @e[x=0,type=armor_stand,tag=Selection,limit=1] PlayerCap 6
scoreboard players set $server_mode global 0
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function game:tipreset
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove ServerModeVoting
scoreboard players set $realms global 0
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove noFullHotbarSound
scoreboard players set @e[x=0,type=armor_stand,tag=Selection,limit=1] modifierID 0
fill -57 201 84 -70 201 72 air replace barrier
fill -57 201 84 -70 201 72 water[level=7] replace tinted_glass strict
fill -57 200 84 -70 200 72 air replace #custom:modification_room_pool_blocks strict
fill -57 198 84 -70 198 72 air replace blackstone
execute as @a[x=0] run function achievements:roots
clear @a
schedule function game:forcestop 2t append
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] store result score @s SetGamemode run scoreboard players get @e[x=0,type=armor_stand,tag=rr_normal,limit=1] gamemodeID
# schedule function servermode:forceclear 3t append
function lobby:parkour/parkoursetup
function lobby:credits/stop
function arenaclear:unhidemodroom
schedule function servermode:fixduel 2t append
data modify storage rocketriders:navbook modroom set value ["\n",{text:"* ",color:"gray",click_event:{action:"run_command",command:"/trigger LobbyWarp set 2"},hover_event:{action:"show_text",value:{color:"gray",text:"Click to teleport to the Modification Room."}}},{text:"Modification Room",color:"dark_purple",hover_event:{action:"show_text",value:{text:"Click to teleport to the Modification Room.",italic:true}},click_event:{action:"run_command",command:"/trigger LobbyWarp set 2"}}]
data modify storage rocketriders:navbook description set value {text:"\nRocket Riders is a tactical game where two teams ride missiles to the enemy base to destroy their portals.\n\nIn the Modification Room, you can easily customize the game with many gamemodes, modifiers, and other settings to play with.",color:"dark_gray"}
data modify storage rocketriders:navbook parkourtips set value ["\n\n     ",{text:"[Parkour Tips]",color:"dark_gray",click_event:{action:"run_command",command:"/trigger toggleParkourTips set 1"},hover_event:{action:"show_text",value:{color:"dark_gray",text:"Click to toggle Parkour instructions."}}}]

scoreboard objectives remove joinBlue
scoreboard objectives remove joinYellow
scoreboard objectives remove spectate