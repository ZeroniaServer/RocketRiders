execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=SMCustom] run return run tellraw @s [{"text":"Custom Server Mode is already enabled!","color":"red"}]

function game:forcestop
scoreboard players set @e[x=0,type=armor_stand,tag=Selection,limit=1] PlayerCap 6
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add SMSwitch
scoreboard players set @e[x=0,type=armor_stand,tag=Selection,limit=1] servermode 0
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add stopIfEmpty
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add noYZELO
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add SplashStreamsOff
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove ServerModeVoting
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove realms
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove Repeat
scoreboard players set @e[x=0,type=armor_stand,tag=Selection,limit=1] RepeatSettings 1
fill -57 201 84 -70 201 72 air replace barrier
fill -57 201 84 -70 201 72 air replace tinted_glass
fill -57 198 84 -70 198 72 air replace blackstone
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
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function lobby:credits/stop
fill -29 196 22 -33 196 22 air
schedule function game:forcestop 2t append
# schedule function servermode:forceclear 3t append
function arenaclear:unhidemodroom
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function arenaclear:globaldefaults
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function modifiers:disablemodifiers
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function arenaclear:refreshsigns
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add SMActive
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add SMCustom
data modify storage rocketriders:navbook modroom set value ["\n",{text:"* ",color:"gray",hover_event:{action:"show_text",value:{text:"Click to teleport to the Modification Room.",italic:true}},click_event:{action:"run_command",command:"/trigger LobbyWarp set 2"}},{text:"Modification Room",color:"dark_purple",hover_event:{action:"show_text",value:{text:"Click to teleport to the Modification Room.",italic:true}},click_event:{action:"run_command",command:"/trigger LobbyWarp set 2"}}]
data modify storage rocketriders:navbook description set value {text:"\nRocket Riders is a tactical game where two teams ride missiles to the enemy base to destroy their portals.\n\nIn the Modification Room, you can easily customize the game with many gamemodes, modifiers, and other settings to play with.",color:"dark_gray"}
data modify storage rocketriders:navbook parkourtips set value [""]