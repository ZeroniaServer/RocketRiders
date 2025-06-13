#Bossbars
function rr_ctf:everytick/bossbars

#Deliver Yellow flag at Blue base
execute as @e[x=0,type=player,team=Blue,tag=CarryFY1,tag=onBlue,predicate=custom:alive] run scoreboard players add @s FlagDeliver 1
execute as @e[x=0,type=player,team=Blue,tag=CarryFY1,tag=onBlue,predicate=custom:alive,scores={FlagDeliver=3..}] run scoreboard players add Blue: FlagDisp 1
execute as @e[x=0,type=player,team=Blue,tag=CarryFY1,tag=onBlue,predicate=custom:alive,scores={FlagDeliver=3..}] as @a[x=0,team=Blue] at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1.2
execute as @e[x=0,type=player,team=Blue,tag=CarryFY1,tag=onBlue,predicate=custom:alive,scores={FlagDeliver=3..}] as @a[x=0,team=Blue] at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 0.75
execute as @e[x=0,type=player,team=Blue,tag=CarryFY1,tag=onBlue,predicate=custom:alive,scores={FlagDeliver=3..}] as @a[x=0,team=Yellow] at @s run playsound minecraft:entity.wither.death master @s ~ ~ ~ 1 1
execute as @e[x=0,type=player,team=Blue,tag=CarryFY1,tag=onBlue,predicate=custom:alive,scores={FlagDeliver=3..}] run tellraw @a[x=0,team=Blue] ["","\n",{"text":"✔ ","color":"green"},{"selector":"@s","color":"blue"},{"text":" successfully captured a ","color":"yellow"},{"text":"Yellow","color":"gold"},{"text":" flag!","color":"yellow"},"\n"]
execute as @e[x=0,type=player,team=Blue,tag=CarryFY1,tag=onBlue,predicate=custom:alive,scores={FlagDeliver=3..}] run tellraw @a[x=0,team=Yellow] ["","\n",{"text":"⚠ ","color":"red"},{"selector":"@s","color":"blue"},{"text":" successfully captured your flag!","color":"yellow"},"\n"]
execute as @e[x=0,type=player,team=Blue,tag=CarryFY1,tag=onBlue,predicate=custom:alive,scores={FlagDeliver=3..}] run tellraw @a[x=0,team=!Yellow,team=!Blue] ["","\n",{"selector":"@s","color":"blue"},{"text":" successfully captured a","color":"yellow"},{"text":" Yellow","color":"gold"},{"text":" flag!","color":"yellow"},"\n"]
execute as @e[x=0,type=player,team=Blue,tag=CarryFY1,tag=onBlue,predicate=custom:alive,scores={FlagDeliver=3..}] run scoreboard players set FY1: FlagScore -2
execute as @e[x=0,type=player,team=Blue,tag=CarryFY1,tag=onBlue,predicate=custom:alive,scores={FlagDeliver=3..}] run scoreboard players add @s[scores={FlagsCaptured=..1}] FlagsCaptured 1
execute as @e[x=0,type=player,team=Blue,tag=CarryFY1,tag=onBlue,predicate=custom:alive,scores={FlagDeliver=3..}] run tag @s remove CarryFY1
execute as @e[x=0,type=player,team=Blue,tag=CarryFY1,tag=onBlue,predicate=custom:alive,scores={FlagDeliver=3..}] run scoreboard players reset @s FlagDeliver

execute as @e[x=0,type=player,team=Blue,tag=CarryFY2,tag=onBlue,predicate=custom:alive] run scoreboard players add @s FlagDeliver 1
execute as @e[x=0,type=player,team=Blue,tag=CarryFY2,tag=onBlue,predicate=custom:alive,scores={FlagDeliver=3..}] run scoreboard players add Blue: FlagDisp 1
execute as @e[x=0,type=player,team=Blue,tag=CarryFY2,tag=onBlue,predicate=custom:alive,scores={FlagDeliver=3..}] as @a[x=0,team=Blue] at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1.2
execute as @e[x=0,type=player,team=Blue,tag=CarryFY2,tag=onBlue,predicate=custom:alive,scores={FlagDeliver=3..}] as @a[x=0,team=Blue] at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 0.75
execute as @e[x=0,type=player,team=Blue,tag=CarryFY2,tag=onBlue,predicate=custom:alive,scores={FlagDeliver=3..}] as @a[x=0,team=Yellow] at @s run playsound minecraft:entity.wither.death master @s ~ ~ ~ 1 1
execute as @e[x=0,type=player,team=Blue,tag=CarryFY2,tag=onBlue,predicate=custom:alive,scores={FlagDeliver=3..}] run tellraw @a[x=0,team=Blue] ["","\n",{"text":"✔ ","color":"green"},{"selector":"@s","color":"blue"},{"text":" successfully captured a ","color":"green"},{"text":"Yellow","color":"gold"},{"text":" flag!","color":"yellow"},"\n"]
execute as @e[x=0,type=player,team=Blue,tag=CarryFY2,tag=onBlue,predicate=custom:alive,scores={FlagDeliver=3..}] run tellraw @a[x=0,team=Yellow] ["","\n",{"text":"⚠ ","color":"red"},{"selector":"@s","color":"blue"},{"text":" successfully captured your flag!","color":"yellow"},"\n"]
execute as @e[x=0,type=player,team=Blue,tag=CarryFY2,tag=onBlue,predicate=custom:alive,scores={FlagDeliver=3..}] run tellraw @a[x=0,team=!Yellow,team=!Blue] ["","\n",{"selector":"@s","color":"blue"},{"text":" successfully captured a","color":"dark_aqua"},{"text":" Yellow","color":"gold"},{"text":" flag!","color":"yellow"},"\n"]
execute as @e[x=0,type=player,team=Blue,tag=CarryFY2,tag=onBlue,predicate=custom:alive,scores={FlagDeliver=3..}] run scoreboard players set FY2: FlagScore -2
execute as @e[x=0,type=player,team=Blue,tag=CarryFY2,tag=onBlue,predicate=custom:alive,scores={FlagDeliver=3..}] run scoreboard players add @s[scores={FlagsCaptured=..1}] FlagsCaptured 1
execute as @e[x=0,type=player,team=Blue,tag=CarryFY2,tag=onBlue,predicate=custom:alive,scores={FlagDeliver=3..}] run tag @s remove CarryFY2
execute as @e[x=0,type=player,team=Blue,tag=CarryFY2,tag=onBlue,predicate=custom:alive,scores={FlagDeliver=3..}] run scoreboard players reset @s FlagDeliver

#Deliver Blue flag at Yellow base
execute as @e[x=0,type=player,team=Yellow,tag=CarryFB1,tag=onYellow,predicate=custom:alive] run scoreboard players add @s FlagDeliver 1
execute as @e[x=0,type=player,team=Yellow,tag=CarryFB1,tag=onYellow,predicate=custom:alive,scores={FlagDeliver=3..}] run scoreboard players add Yellow: FlagDisp 1
execute as @e[x=0,type=player,team=Yellow,tag=CarryFB1,tag=onYellow,predicate=custom:alive,scores={FlagDeliver=3..}] as @a[x=0,team=Yellow] at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1.2
execute as @e[x=0,type=player,team=Yellow,tag=CarryFB1,tag=onYellow,predicate=custom:alive,scores={FlagDeliver=3..}] as @a[x=0,team=Yellow] at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 0.75
execute as @e[x=0,type=player,team=Yellow,tag=CarryFB1,tag=onYellow,predicate=custom:alive,scores={FlagDeliver=3..}] as @a[x=0,team=Blue] at @s run playsound minecraft:entity.wither.death master @s ~ ~ ~ 1 1
execute as @e[x=0,type=player,team=Yellow,tag=CarryFB1,tag=onYellow,predicate=custom:alive,scores={FlagDeliver=3..}] run tellraw @a[x=0,team=Yellow] ["","\n",{"text":"✔ ","color":"green"},{"selector":"@s","color":"gold"},{"text":" successfully captured a ","color":"dark_aqua"},{"text":"Blue","color":"blue"},{"text":" flag!","color":"dark_aqua"},"\n"]
execute as @e[x=0,type=player,team=Yellow,tag=CarryFB1,tag=onYellow,predicate=custom:alive,scores={FlagDeliver=3..}] run tellraw @a[x=0,team=Blue] ["","\n",{"text":"⚠ ","color":"red"},{"selector":"@s","color":"gold"},{"text":" successfully captured your flag!","color":"dark_aqua"},"\n"]
execute as @e[x=0,type=player,team=Yellow,tag=CarryFB1,tag=onYellow,predicate=custom:alive,scores={FlagDeliver=3..}] run tellraw @a[x=0,team=!Yellow,team=!Blue] ["","\n",{"selector":"@s","color":"gold"},{"text":" successfully captured a","color":"dark_aqua"},{"text":" Blue","color":"blue"},{"text":" flag!","color":"dark_aqua"},"\n"]
execute as @e[x=0,type=player,team=Yellow,tag=CarryFB1,tag=onYellow,predicate=custom:alive,scores={FlagDeliver=3..}] run scoreboard players set FB1: FlagScore -2
execute as @e[x=0,type=player,team=Yellow,tag=CarryFB1,tag=onYellow,predicate=custom:alive,scores={FlagDeliver=3..}] run scoreboard players add @s[scores={FlagsCaptured=..1}] FlagsCaptured 1
execute as @e[x=0,type=player,team=Yellow,tag=CarryFB1,tag=onYellow,predicate=custom:alive,scores={FlagDeliver=3..}] run tag @s remove CarryFB1
execute as @e[x=0,type=player,team=Yellow,tag=CarryFB1,tag=onYellow,predicate=custom:alive,scores={FlagDeliver=3..}] run scoreboard players reset @s FlagDeliver

execute as @e[x=0,type=player,team=Yellow,tag=CarryFB2,tag=onYellow,predicate=custom:alive] run scoreboard players add @s FlagDeliver 1
execute as @e[x=0,type=player,team=Yellow,tag=CarryFB2,tag=onYellow,predicate=custom:alive,scores={FlagDeliver=3..}] run scoreboard players add Yellow: FlagDisp 1
execute as @e[x=0,type=player,team=Yellow,tag=CarryFB2,tag=onYellow,predicate=custom:alive,scores={FlagDeliver=3..}] as @a[x=0,team=Yellow] at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1.2
execute as @e[x=0,type=player,team=Yellow,tag=CarryFB2,tag=onYellow,predicate=custom:alive,scores={FlagDeliver=3..}] as @a[x=0,team=Yellow] at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 0.75
execute as @e[x=0,type=player,team=Yellow,tag=CarryFB2,tag=onYellow,predicate=custom:alive,scores={FlagDeliver=3..}] as @a[x=0,team=Blue] at @s run playsound minecraft:entity.wither.death master @s ~ ~ ~ 1 1
execute as @e[x=0,type=player,team=Yellow,tag=CarryFB2,tag=onYellow,predicate=custom:alive,scores={FlagDeliver=3..}] run tellraw @a[x=0,team=Yellow] ["","\n",{"text":"✔ ","color":"green"},{"selector":"@s","color":"gold"},{"text":" successfully captured a ","color":"dark_aqua"},{"text":"Blue","color":"blue"},{"text":" flag!","color":"dark_aqua"},"\n"]
execute as @e[x=0,type=player,team=Yellow,tag=CarryFB2,tag=onYellow,predicate=custom:alive,scores={FlagDeliver=3..}] run tellraw @a[x=0,team=Blue] ["","\n",{"text":"⚠ ","color":"red"},{"selector":"@s","color":"gold"},{"text":" successfully captured your flag!","color":"dark_aqua"},"\n"]
execute as @e[x=0,type=player,team=Yellow,tag=CarryFB2,tag=onYellow,predicate=custom:alive,scores={FlagDeliver=3..}] run tellraw @a[x=0,team=!Yellow,team=!Blue] ["","\n",{"selector":"@s","color":"gold"},{"text":" successfully captured a","color":"dark_aqua"},{"text":" Blue","color":"blue"},{"text":" flag!","color":"dark_aqua"},"\n"]
execute as @e[x=0,type=player,team=Yellow,tag=CarryFB2,tag=onYellow,predicate=custom:alive,scores={FlagDeliver=3..}] run scoreboard players set FB2: FlagScore -2
execute as @e[x=0,type=player,team=Yellow,tag=CarryFB2,tag=onYellow,predicate=custom:alive,scores={FlagDeliver=3..}] run scoreboard players add @s[scores={FlagsCaptured=..1}] FlagsCaptured 1
execute as @e[x=0,type=player,team=Yellow,tag=CarryFB2,tag=onYellow,predicate=custom:alive,scores={FlagDeliver=3..}] run tag @s remove CarryFB2
execute as @e[x=0,type=player,team=Yellow,tag=CarryFB2,tag=onYellow,predicate=custom:alive,scores={FlagDeliver=3..}] run scoreboard players reset @s FlagDeliver

item replace entity @a[x=0,tag=CarryFlag,tag=!CarryFY1,tag=!CarryFY2,tag=!CarryFB1,tag=!CarryFB2] armor.head with air

execute as @a[x=0,tag=CarryFlag] unless entity @s[scores={FlagScore=110..}] run scoreboard players add @s FlagScore 1

execute as @a[x=0,tag=CarryFY1,scores={FlagScore=1}] run item replace entity @s armor.head with minecraft:yellow_banner[enchantments={binding_curse:1},tooltip_display={hidden_components:["enchantments"]}]
execute as @a[x=0,tag=CarryFY1,scores={FlagScore=1}] run fill 34 65 63 30 72 64 air replace yellow_wool
execute as @a[x=0,tag=CarryFY2,scores={FlagScore=1}] run item replace entity @s armor.head with minecraft:yellow_banner[enchantments={binding_curse:1},tooltip_display={hidden_components:["enchantments"]}]
execute as @a[x=0,tag=CarryFY2,scores={FlagScore=1}] run fill -10 66 64 -14 65 63 air replace yellow_wool
execute as @a[x=0,tag=CarryFB1,scores={FlagScore=1}] run item replace entity @s armor.head with minecraft:blue_banner[enchantments={binding_curse:1},tooltip_display={hidden_components:["enchantments"]}]
execute as @a[x=0,tag=CarryFB1,scores={FlagScore=1}] run fill -14 65 -64 -10 66 -65 air replace blue_wool
execute as @a[x=0,tag=CarryFB2,scores={FlagScore=1}] run item replace entity @s armor.head with minecraft:blue_banner[enchantments={binding_curse:1},tooltip_display={hidden_components:["enchantments"]}]
execute as @a[x=0,tag=CarryFB2,scores={FlagScore=1}] run fill 30 65 -64 34 66 -65 air replace blue_wool
execute as @a[x=0,tag=CarryFlag,scores={FlagScore=1}] as @a[x=0,team=!Lobby] at @s run playsound entity.ender_dragon.flap master @s ~ ~ ~ 1 2


execute as @a[x=0,tag=CarryFlag,team=Blue,scores={FlagScore=1}] at @s run tellraw @a[x=0,team=!Yellow,team=!Blue] ["","\n",{"selector":"@s","color":"blue"},{"text":" stole a ","color":"yellow"},{"text":"Yellow","color":"gold"},{"text":" flag!","color":"yellow"},"\n"]
execute as @a[x=0,tag=CarryFlag,team=Blue,scores={FlagScore=1}] at @s run tellraw @a[x=0,team=Blue] ["","\n",{"text":"✔ ","color":"green"},{"selector":"@s","color":"blue"},{"text":" stole a ","color":"yellow"},{"text":"Yellow","color":"gold"},{"text":" flag!","color":"yellow"},"\n"]
execute as @a[x=0,tag=CarryFlag,team=Blue,scores={FlagScore=1}] at @s run tellraw @a[x=0,team=Yellow] ["","\n",{"text":"⚠ ","color":"red"},{"selector":"@s","color":"blue"},{"text":" stole your flag!","color":"yellow"},"\n"]


execute as @a[x=0,tag=CarryFlag,team=Yellow,scores={FlagScore=1}] at @s run tellraw @a[x=0,team=!Yellow,team=!Blue] ["","\n",{"selector":"@s","color":"gold"},{"text":" stole a ","color":"dark_aqua"},{"text":"Blue","color":"blue"},{"text":" flag!","color":"dark_aqua"},"\n"]
execute as @a[x=0,tag=CarryFlag,team=Yellow,scores={FlagScore=1}] at @s run tellraw @a[x=0,team=Yellow] ["","\n",{"text":"✔ ","color":"green"},{"selector":"@s","color":"gold"},{"text":" stole a ","color":"dark_aqua"},{"text":"Blue","color":"blue"},{"text":" flag!","color":"dark_aqua"},"\n"]
execute as @a[x=0,tag=CarryFlag,team=Yellow,scores={FlagScore=1}] at @s run tellraw @a[x=0,team=Blue] ["","\n",{"text":"⚠ ","color":"red"},{"selector":"@s","color":"gold"},{"text":" stole your flag!","color":"dark_aqua"},"\n"]
effect give @a[x=0,tag=CarryFlag,scores={FlagScore=1}] glowing infinite 0 true
effect give @a[x=0,tag=CarryFlag,scores={FlagScore=1}] resistance infinite 0 true
effect give @a[x=0,tag=CarryFlag,scores={FlagScore=1}] strength infinite 0 true
effect give @a[x=0,tag=CarryFlag,scores={FlagScore=1}] absorption infinite 0 true

function rr_ctf:everytick/particlebeams