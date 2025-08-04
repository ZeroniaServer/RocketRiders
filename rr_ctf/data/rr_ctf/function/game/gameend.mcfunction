clear @a[x=0,team=Blue] #custom:clear
clear @a[x=0,team=Blue] crossbow[custom_data~{nova:1b}]
clear @a[x=0,team=Yellow] #custom:clear
clear @a[x=0,team=Yellow] crossbow[custom_data~{nova:1b}]
execute if entity @s[scores={endtimer=1}] as @e[x=0,type=item] if items entity @s contents netherite_pickaxe run function items:killendweapon
execute if entity @s[scores={endtimer=1},tag=BlueWon] run clear @a[x=0,team=Yellow] netherite_pickaxe
execute if entity @s[scores={endtimer=1},tag=BlueWon] as @a[x=0,team=Yellow] run loot give @s loot items:misc/piercing_pickaxe_end
execute if entity @s[scores={endtimer=1},tag=YellowWon] run clear @a[x=0,team=Blue] netherite_pickaxe
execute if entity @s[scores={endtimer=1},tag=YellowWon] as @a[x=0,team=Blue] run loot give @s loot items:misc/piercing_pickaxe_end
execute if entity @s[scores={endtimer=1..}] run kill @e[x=0,type=marker,tag=airDetectBlue,limit=1]
execute if entity @s[scores={endtimer=1..}] run kill @e[x=0,type=marker,tag=airDetectYellow,limit=1]
execute if entity @s[scores={endtimer=1..}] run fill -9 74 68 -15 64 61 moving_piston replace air
execute if entity @s[scores={endtimer=1..}] run fill 35 74 68 29 64 61 moving_piston replace air
execute if entity @s[scores={endtimer=1..}] run fill -9 74 -68 -15 64 -61 moving_piston replace air
execute if entity @s[scores={endtimer=1..}] run fill 35 74 -68 29 64 -61 moving_piston replace air
execute if entity @s[scores={endtimer=2}] run function rr_ctf:game/endstats
execute if entity @s[scores={endtimer=2..}] run tag @a[x=0] remove FlipMissile
execute if entity @s[scores={endtimer=2..}] run tag @a[x=0] remove CarryFlag
execute if entity @s[scores={endtimer=2..}] run tag @a[x=0] remove CarryFY1
execute if entity @s[scores={endtimer=2..}] run tag @a[x=0] remove CarryFY2
execute if entity @s[scores={endtimer=2..}] run tag @a[x=0] remove CarryFB1
execute if entity @s[scores={endtimer=2..}] run tag @a[x=0] remove CarryFB2
execute if entity @s[scores={endtimer=1..}] run kill @e[x=0,type=marker,tag=FlagParticle]
execute if entity @s[scores={endtimer=2..}] run scoreboard players reset * FlagScore
execute if entity @s[scores={endtimer=2..}] run scoreboard players reset * FlagDeliver
execute if entity @s[scores={endtimer=1..}] run bossbar set rr_ctf:fy1 players none
execute if entity @s[scores={endtimer=1..}] run bossbar set rr_ctf:fy1 name ["",{"text":" is carrying a ","color":"dark_aqua"},{"text":"Yellow","color":"gold"},{"text":" flag!","color":"dark_aqua"}]
execute if entity @s[scores={endtimer=1..}] run bossbar set rr_ctf:fy1 value 0
execute if entity @s[scores={endtimer=1..}] run bossbar set rr_ctf:fy2 players none
execute if entity @s[scores={endtimer=1..}] run bossbar set rr_ctf:fy2 name ["",{"text":" is carrying a ","color":"dark_aqua"},{"text":"Yellow","color":"gold"},{"text":" flag!","color":"dark_aqua"}]
execute if entity @s[scores={endtimer=1..}] run bossbar set rr_ctf:fy2 value 0
execute if entity @s[scores={endtimer=1..}] run bossbar set rr_ctf:fb1 players none
execute if entity @s[scores={endtimer=1..}] run bossbar set rr_ctf:fb1 name ["",{"text":" is carrying a ","color":"yellow"},{"text":"Blue","color":"blue"},{"text":" flag!","color":"yellow"}]
execute if entity @s[scores={endtimer=1..}] run bossbar set rr_ctf:fb1 value 0
execute if entity @s[scores={endtimer=1..}] run bossbar set rr_ctf:fb2 players none
execute if entity @s[scores={endtimer=1..}] run bossbar set rr_ctf:fb2 name ["",{"text":" is carrying a ","color":"yellow"},{"text":"Blue","color":"blue"},{"text":" flag!","color":"yellow"}]
execute if entity @s[scores={endtimer=1..}] run bossbar set rr_ctf:fb2 value 0
execute if entity @s[scores={endtimer=569..}] run scoreboard objectives setdisplay sidebar.team.gold
execute if entity @s[scores={endtimer=569..}] run scoreboard objectives setdisplay sidebar.team.blue
execute if entity @s[scores={endtimer=569..}] run scoreboard objectives setdisplay sidebar.team.dark_gray
execute if entity @s[scores={endtimer=569..}] run scoreboard players reset * FlagDisp
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove CTFOvertime
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove CTF3stack