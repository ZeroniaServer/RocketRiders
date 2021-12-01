clear @a[team=Blue] #custom:clear
clear @a[team=Blue] crossbow{nova:1b}
clear @a[team=Yellow] #custom:clear
clear @a[team=Yellow] crossbow{nova:1b}
execute if entity @s[scores={endtimer=1}] as @e[type=item,nbt={Item:{id:"minecraft:netherite_pickaxe"}}] run function items:killendweapon
execute if entity @s[scores={endtimer=1},tag=BlueWon] run clear @a[team=Yellow] netherite_pickaxe
execute if entity @s[scores={endtimer=1},tag=BlueWon] run give @a[team=Yellow] netherite_pickaxe{display:{Name:'{"translate":"Piercing Pickaxe","color":"gold","bold":true,"italic":false}',Lore:['{"translate":"A tool used both for"}','{"translate":"mining and melee attacks."}']},HideFlags:31,Unbreakable:1b,Enchantments:[{id:"unbreaking",lvl:4}],AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.2,Operation:0,UUID:[I;346953296,-1115273365,-1997860529,1241626160],Slot:"mainhand"}]}
execute if entity @s[scores={endtimer=1},tag=YellowWon] run clear @a[team=Blue] netherite_pickaxe
execute if entity @s[scores={endtimer=1},tag=YellowWon] run give @a[team=Blue] netherite_pickaxe{display:{Name:'{"translate":"Piercing Pickaxe","color":"blue","bold":true,"italic":false}',Lore:['{"translate":"A tool used both for"}','{"translate":"mining and melee attacks."}']},HideFlags:31,Unbreakable:1b,Enchantments:[{id:"unbreaking",lvl:4}],AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.2,Operation:0,UUID:[I;346953296,-1115273365,-1997860529,1241626160],Slot:"mainhand"}]}
execute if entity @s[scores={endtimer=1..}] run kill @e[type=marker,tag=airDetectBlue]
execute if entity @s[scores={endtimer=1..}] run kill @e[type=marker,tag=airDetectYellow]
execute if entity @s[scores={endtimer=1..}] run fill -9 74 68 -15 64 61 moving_piston replace air
execute if entity @s[scores={endtimer=1..}] run fill 35 74 68 29 64 61 moving_piston replace air
execute if entity @s[scores={endtimer=1..}] run fill -9 74 -68 -15 64 -61 moving_piston replace air
execute if entity @s[scores={endtimer=1..}] run fill 35 74 -68 29 64 -61 moving_piston replace air
execute if entity @s[scores={endtimer=2}] run function rr_ctf:game/endstats
execute if entity @s[scores={endtimer=2..}] run tag @a remove FlipMissile
execute if entity @s[scores={endtimer=2..}] run tag @a remove CarryFlag
execute if entity @s[scores={endtimer=2..}] run tag @a remove CarryFY1
execute if entity @s[scores={endtimer=2..}] run tag @a remove CarryFY2
execute if entity @s[scores={endtimer=2..}] run tag @a remove CarryFB1
execute if entity @s[scores={endtimer=2..}] run tag @a remove CarryFB2
execute if entity @s[scores={endtimer=1..}] run kill @e[type=marker,tag=FlagParticle]
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
tag @e[tag=Selection] remove CTFOvertime
tag @e[tag=Selection] remove CTF3stack