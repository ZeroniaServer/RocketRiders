tag @e[tag=rr_normal] add GamemodeAS
tag @e[tag=rr_powerups] add GamemodeAS
tag @e[tag=rr_swap] add GamemodeAS
tag @e[tag=rr_ctf] add GamemodeAS
tag @e[tag=rr_duel] add GamemodeAS
tag @e[tag=rr_chase] add GamemodeAS

fill -10 230 77 -10 230 79 polished_andesite
setblock -10 231 78 polished_andesite

scoreboard objectives add MineWhiteGlass minecraft.mined:minecraft.white_stained_glass
scoreboard objectives add MinePurpleGlass minecraft.mined:minecraft.purple_stained_glass
scoreboard objectives add VortexID dummy

function lobby:credits/restart
#schedule function custom:ck_uponload 20t