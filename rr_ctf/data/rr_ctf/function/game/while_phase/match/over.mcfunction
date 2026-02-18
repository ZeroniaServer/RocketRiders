execute if score $match_over_timer global matches 1.. run kill @e[x=0,type=marker,tag=airDetectBlue,limit=1]
execute if score $match_over_timer global matches 1.. run kill @e[x=0,type=marker,tag=airDetectYellow,limit=1]
execute if score $match_over_timer global matches 1.. run fill -9 74 68 -15 64 61 moving_piston replace #custom:air
execute if score $match_over_timer global matches 1.. run fill 35 74 68 29 64 61 moving_piston replace #custom:air
execute if score $match_over_timer global matches 1.. run fill -9 74 -68 -15 64 -61 moving_piston replace #custom:air
execute if score $match_over_timer global matches 1.. run fill 35 74 -68 29 64 -61 moving_piston replace #custom:air
execute if score $match_over_timer global matches 2.. run tag @a[x=0] remove FlipMissile
execute if score $match_over_timer global matches 2.. run tag @a[x=0] remove CarryFlag
execute if score $match_over_timer global matches 2.. run tag @a[x=0] remove CarryFY1
execute if score $match_over_timer global matches 2.. run tag @a[x=0] remove CarryFY2
execute if score $match_over_timer global matches 2.. run tag @a[x=0] remove CarryFB1
execute if score $match_over_timer global matches 2.. run tag @a[x=0] remove CarryFB2
execute if score $match_over_timer global matches 1.. run kill @e[x=0,type=marker,tag=FlagParticle]
execute if score $match_over_timer global matches 2.. run scoreboard players reset @a[x=0] FlagScore
execute if score $match_over_timer global matches 2.. run scoreboard players reset @a[x=0] FlagDeliver
execute if score $match_over_timer global matches 1.. run bossbar set rr_ctf:fy1 players none
execute if score $match_over_timer global matches 1.. run bossbar set rr_ctf:fy1 name ["",{"text":" is carrying a ","color":"dark_aqua"},{"text":"Yellow","color":"gold"},{"text":" flag!","color":"dark_aqua"}]
execute if score $match_over_timer global matches 1.. run bossbar set rr_ctf:fy1 value 0
execute if score $match_over_timer global matches 1.. run bossbar set rr_ctf:fy2 players none
execute if score $match_over_timer global matches 1.. run bossbar set rr_ctf:fy2 name ["",{"text":" is carrying a ","color":"dark_aqua"},{"text":"Yellow","color":"gold"},{"text":" flag!","color":"dark_aqua"}]
execute if score $match_over_timer global matches 1.. run bossbar set rr_ctf:fy2 value 0
execute if score $match_over_timer global matches 1.. run bossbar set rr_ctf:fb1 players none
execute if score $match_over_timer global matches 1.. run bossbar set rr_ctf:fb1 name ["",{"text":" is carrying a ","color":"yellow"},{"text":"Blue","color":"blue"},{"text":" flag!","color":"yellow"}]
execute if score $match_over_timer global matches 1.. run bossbar set rr_ctf:fb1 value 0
execute if score $match_over_timer global matches 1.. run bossbar set rr_ctf:fb2 players none
execute if score $match_over_timer global matches 1.. run bossbar set rr_ctf:fb2 name ["",{"text":" is carrying a ","color":"yellow"},{"text":"Blue","color":"blue"},{"text":" flag!","color":"yellow"}]
execute if score $match_over_timer global matches 1.. run bossbar set rr_ctf:fb2 value 0
execute if score $match_over_timer global matches 569.. run scoreboard objectives setdisplay sidebar.team.gold
execute if score $match_over_timer global matches 569.. run scoreboard objectives setdisplay sidebar.team.blue
execute if score $match_over_timer global matches 569.. run scoreboard objectives setdisplay sidebar.team.dark_gray
execute if score $match_over_timer global matches 569.. run scoreboard objectives setdisplay list
execute if score $match_over_timer global matches 569.. run scoreboard players reset * FlagScore
execute if score $match_over_timer global matches 569.. run scoreboard players reset * FlagDeliver
execute if score $match_over_timer global matches 569.. run scoreboard players reset * FlagDisp
execute if score $match_over_timer global matches 569.. run scoreboard players reset * flag_tablist_display
execute if score $match_over_timer global matches 569.. run scoreboard players reset $flags_captured_by_blue global
execute if score $match_over_timer global matches 569.. run scoreboard players reset $flags_captured_by_yellow global
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove CTFOvertime
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove CTF3stack
