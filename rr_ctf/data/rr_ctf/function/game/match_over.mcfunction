clear @a[x=0,predicate=custom:on_blue_or_yellow_team] #custom:clear
clear @a[x=0,predicate=custom:on_blue_or_yellow_team] *[custom_data~{id:"nova_rocket"}]
clear @a[x=0,predicate=custom:on_blue_or_yellow_team] *[custom_data~{id:"booster_rocket"}]
execute if entity @s[scores={endtimer=1}] as @e[x=0,type=item] if items entity @s contents netherite_pickaxe run function items:killendweapon
execute if entity @s[scores={endtimer=1}] as @a[x=0,predicate=custom:on_blue_or_yellow_team] run function custom:update_inventory/piercing_pickaxe
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
execute if entity @s[scores={endtimer=2..}] run scoreboard players reset @a[x=0] FlagScore
execute if entity @s[scores={endtimer=2..}] run scoreboard players reset @a[x=0] FlagDeliver
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
execute if entity @s[scores={endtimer=569..}] run scoreboard objectives setdisplay list
execute if entity @s[scores={endtimer=569..}] run scoreboard players reset * FlagScore
execute if entity @s[scores={endtimer=569..}] run scoreboard players reset * FlagDeliver
execute if entity @s[scores={endtimer=569..}] run scoreboard players reset * FlagDisp
execute if entity @s[scores={endtimer=569..}] run scoreboard players reset * flag_tablist_display
execute if entity @s[scores={endtimer=569..}] run scoreboard players reset $flags_captured_by_blue global
execute if entity @s[scores={endtimer=569..}] run scoreboard players reset $flags_captured_by_yellow global
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove CTFOvertime
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove CTF3stack