execute unless entity @e[tag=rr_ctf,limit=1,type=armor_stand] run summon armor_stand 23 216 -18 {Tags:["rr_ctf","gamemodeAS"],Marker:1b,Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,CustomName:'{"text":"CTF Mode"}'}
scoreboard objectives add HasPickaxe dummy
scoreboard objectives add dropPickaxe minecraft.dropped:minecraft.netherite_pickaxe
scoreboard objectives add FlagScore dummy
scoreboard objectives add FlagDeliver dummy
scoreboard objectives add MineWhiteGlass minecraft.mined:minecraft.white_stained_glass
scoreboard objectives add MinePurpleGlass minecraft.mined:minecraft.purple_stained_glass
scoreboard objectives add canopyStreak dummy

bossbar add rr_ctf:fy1 ["",{"text":" is carrying a ","color":"dark_aqua"},{"text":"Yellow","color":"gold"},{"text":" flag!","color":"dark_aqua"}]
bossbar set rr_ctf:fy1 color blue
bossbar set rr_ctf:fy1 style notched_10
bossbar set rr_ctf:fy1 max 10

bossbar add rr_ctf:fy2 ["",{"text":" is carrying a ","color":"dark_aqua"},{"text":"Yellow","color":"gold"},{"text":" flag!","color":"dark_aqua"}]
bossbar set rr_ctf:fy2 color blue
bossbar set rr_ctf:fy2 style notched_10
bossbar set rr_ctf:fy2 max 10

bossbar add rr_ctf:fb1 ["",{"text":" is carrying a ","color":"yellow"},{"text":"Blue","color":"blue"},{"text":" flag!","color":"yellow"}]
bossbar set rr_ctf:fb1 color yellow
bossbar set rr_ctf:fb1 style notched_10
bossbar set rr_ctf:fb1 max 10

bossbar add rr_ctf:fb2 ["",{"text":" is carrying a ","color":"yellow"},{"text":"Blue","color":"blue"},{"text":" flag!","color":"yellow"}]
bossbar set rr_ctf:fb2 color yellow
bossbar set rr_ctf:fb2 style notched_10
bossbar set rr_ctf:fb2 max 10

scoreboard objectives add FlagDisp dummy ["",{"text":"Flag Count ","color":"green","bold":true},{"text":"/ 2","color":"red"}]
execute if entity @e[tag=rr_ctf,limit=1,type=armor_stand] run tellraw @s {"text":"Capture the Flag Mode installed.","color":"green","bold":true}
scoreboard players add @e[tag=rr_ctf,limit=1,type=armor_stand] CmdData 1
execute unless entity @e[tag=PlacerClear,type=marker] run function game:forcestop