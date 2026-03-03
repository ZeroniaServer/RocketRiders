kill @e[x=0,type=marker,tag=airDetectBlue,limit=1]
kill @e[x=0,type=marker,tag=airDetectYellow,limit=1]
fill -9 74 68 -15 64 61 moving_piston replace #custom:air
fill 35 74 68 29 64 61 moving_piston replace #custom:air
fill -9 74 -68 -15 64 -61 moving_piston replace #custom:air
fill 35 74 -68 29 64 -61 moving_piston replace #custom:air
tag @a[x=0] remove FlipMissile
tag @a[x=0] remove CarryFlag
tag @a[x=0] remove CarryFY1
tag @a[x=0] remove CarryFY2
tag @a[x=0] remove CarryFB1
tag @a[x=0] remove CarryFB2
kill @e[x=0,type=marker,tag=FlagParticle]
scoreboard players reset @a[x=0] FlagScore
scoreboard players reset @a[x=0] FlagDeliver
bossbar set rr_ctf:fy1 players none
bossbar set rr_ctf:fy1 name ""
bossbar set rr_ctf:fy1 value 0
bossbar set rr_ctf:fy2 players none
bossbar set rr_ctf:fy2 name ""
bossbar set rr_ctf:fy2 value 0
bossbar set rr_ctf:fb1 players none
bossbar set rr_ctf:fb1 name ""
bossbar set rr_ctf:fb1 value 0
bossbar set rr_ctf:fb2 players none
bossbar set rr_ctf:fb2 name ""
bossbar set rr_ctf:fb2 value 0
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove CTFOvertime
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove CTF3stack
