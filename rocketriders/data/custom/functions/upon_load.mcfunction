tag @e[tag=rr_normal] add GamemodeAS
tag @e[tag=rr_powerups] add GamemodeAS
tag @e[tag=rr_swap] add GamemodeAS
tag @e[tag=rr_ctf] add GamemodeAS
tag @e[tag=rr_duel] add GamemodeAS
tag @e[tag=rr_chase] add GamemodeAS

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

fill -10 230 77 -10 230 79 polished_andesite
setblock -10 231 78 polished_andesite
data modify entity @e[tag=EvtemaCredits,type=armor_stand,limit=1] HandItems[1] merge value {id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;2076391720,1485847031,-1498900811,226264565],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHBzOi8vZWR1Y2F0aW9uLm1pbmVjcmFmdC5uZXQvd3AtY29udGVudC91cGxvYWRzL25vdGUtMS5wbmcifX19"}]}}}}

scoreboard objectives add MineWhiteGlass minecraft.mined:minecraft.white_stained_glass
scoreboard objectives add MinePurpleGlass minecraft.mined:minecraft.purple_stained_glass
scoreboard objectives add VortexID dummy
scoreboard objectives add VoteNum dummy
scoreboard objectives add splashCount dummy
scoreboard objectives add canopyCount dummy
scoreboard objectives add shieldCount dummy
scoreboard objectives add beeShieldCount dummy
scoreboard objectives add Volume dummy
scoreboard objectives add canopySmoke dummy
scoreboard objectives add canopyStreak dummy

scoreboard players set 64 CmdData 64
scoreboard players set 16 CmdData 16

function lobby:credits/restart
function custom:ck_uponload