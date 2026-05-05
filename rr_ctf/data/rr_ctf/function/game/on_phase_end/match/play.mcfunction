fill -9 74 68 -15 64 61 moving_piston replace #custom:air
fill 35 74 68 29 64 61 moving_piston replace #custom:air
fill -9 74 -68 -15 64 -61 moving_piston replace #custom:air
fill 35 74 -68 29 64 -61 moving_piston replace #custom:air
tag @a[x=0] remove FlipMissile
tag @a[x=0] remove carrying_flag.yellow_right
tag @a[x=0] remove carrying_flag.yellow_left
tag @a[x=0] remove carrying_flag.blue_right
tag @a[x=0] remove carrying_flag.blue_left
kill @e[x=0,type=marker,tag=FlagParticle]
scoreboard players reset @a[x=0] carrying_flag_time
bossbar set rr_ctf:flag/yellow_right players
bossbar set rr_ctf:flag/yellow_right name ""
bossbar set rr_ctf:flag/yellow_right value 0
bossbar set rr_ctf:flag/yellow_left players
bossbar set rr_ctf:flag/yellow_left name ""
bossbar set rr_ctf:flag/yellow_left value 0
bossbar set rr_ctf:flag/blue_right players
bossbar set rr_ctf:flag/blue_right name ""
bossbar set rr_ctf:flag/blue_right value 0
bossbar set rr_ctf:flag/blue_left players
bossbar set rr_ctf:flag/blue_left name ""
bossbar set rr_ctf:flag/blue_left value 0
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove CTFOvertime
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove CTF3stack
