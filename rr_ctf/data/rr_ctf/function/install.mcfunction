execute unless entity @e[x=0,type=armor_stand,tag=rr_ctf,limit=1] run summon armor_stand 25 184 -6 {Tags:["rr_ctf","gamemodeAS"],Marker:1b,Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,CustomName:{"text":"CTF Mode"}}
scoreboard objectives add carrying_flag_time dummy
scoreboard objectives add MineWhiteGlass minecraft.mined:minecraft.white_stained_glass
scoreboard objectives add MinePurpleGlass minecraft.mined:minecraft.purple_stained_glass
scoreboard objectives add canopyStreak dummy

bossbar add rr_ctf:flag/blue_left ""
bossbar set rr_ctf:flag/blue_left color yellow
bossbar set rr_ctf:flag/blue_left style notched_10
bossbar set rr_ctf:flag/blue_left max 10

bossbar add rr_ctf:flag/blue_right ""
bossbar set rr_ctf:flag/blue_right color yellow
bossbar set rr_ctf:flag/blue_right style notched_10
bossbar set rr_ctf:flag/blue_right max 10

bossbar add rr_ctf:flag/yellow_left ""
bossbar set rr_ctf:flag/yellow_left color blue
bossbar set rr_ctf:flag/yellow_left style notched_10
bossbar set rr_ctf:flag/yellow_left max 10

bossbar add rr_ctf:flag/yellow_right ""
bossbar set rr_ctf:flag/yellow_right color blue
bossbar set rr_ctf:flag/yellow_right style notched_10
bossbar set rr_ctf:flag/yellow_right max 10

scoreboard objectives add ctf_sidebar dummy {bold:true,color:"green",text:"Flag Count"}
execute if entity @e[x=0,type=armor_stand,tag=rr_ctf,limit=1] run tellraw @s {"text":"Capture the Flag Mode installed.","color":"green","bold":true}
scoreboard players add @e[x=0,type=armor_stand,tag=rr_ctf,limit=1] CmdData 1
execute unless entity @e[x=0,type=marker,tag=PlacerClear] run function game:forcestop