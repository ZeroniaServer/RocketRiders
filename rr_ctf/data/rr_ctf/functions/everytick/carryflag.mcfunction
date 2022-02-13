#Restore flag when carrier dies
execute as @a[tag=CarryFY1,tag=probablyDied,tag=!stopCheckingDeath] run scoreboard players set FY1: FlagScore 0
execute as @a[tag=CarryFY2,tag=probablyDied,tag=!stopCheckingDeath] run scoreboard players set FY2: FlagScore 0
execute as @a[tag=CarryFB1,tag=probablyDied,tag=!stopCheckingDeath] run scoreboard players set FB1: FlagScore 0
execute as @a[tag=CarryFB2,tag=probablyDied,tag=!stopCheckingDeath] run scoreboard players set FB2: FlagScore 0

execute as @a[tag=CarryFY1,tag=probablyDied,tag=!stopCheckingDeath] run tellraw @a[team=!Yellow,team=!Blue] ["","\n",{"text":"Flag Restored! ","color":"gold"},{"selector":"@s","color":"blue"},{"text":" died while carrying a flag so the flag has been placed back at the base.","color":"yellow"},"\n"]
execute as @a[tag=CarryFY1,tag=probablyDied,tag=!stopCheckingDeath] run tellraw @a[team=Blue] ["","\n",{"text":"⚠ ","color":"red"},{"text":"Flag Restored! ","color":"gold"},{"selector":"@s","color":"blue"},{"text":" died while carrying a flag so the flag has been placed back at the base.","color":"yellow"},"\n"]
execute as @a[tag=CarryFY1,tag=probablyDied,tag=!stopCheckingDeath] run tellraw @a[team=Yellow] ["","\n",{"text":"✔ ","color":"green"},{"selector":"@s","color":"blue"},{"text":" died while carrying a flag so the flag has been placed back at the base.","color":"yellow"},"\n"]

execute as @a[tag=CarryFY2,tag=probablyDied,tag=!stopCheckingDeath] run tellraw @a[team=!Yellow,team=!Blue] ["","\n",{"text":"Flag Restored! ","color":"gold"},{"selector":"@s","color":"blue"},{"text":" died while carrying a flag so the flag has been placed back at the base.","color":"yellow"},"\n"]
execute as @a[tag=CarryFY2,tag=probablyDied,tag=!stopCheckingDeath] run tellraw @a[team=Blue] ["","\n",{"text":"⚠ ","color":"red"},{"text":"Flag Restored! ","color":"gold"},{"selector":"@s","color":"blue"},{"text":" died while carrying a flag so the flag has been placed back at the base.","color":"yellow"},"\n"]
execute as @a[tag=CarryFY2,tag=probablyDied,tag=!stopCheckingDeath] run tellraw @a[team=Yellow] ["","\n",{"text":"✔ ","color":"green"},{"selector":"@s","color":"blue"},{"text":" died while carrying a flag so the flag has been placed back at the base.","color":"yellow"},"\n"]

execute as @a[tag=CarryFB1,tag=probablyDied,tag=!stopCheckingDeath] run tellraw @a[team=!Yellow,team=!Blue] ["","\n",{"text":"Flag Restored! ","color":"blue"},{"selector":"@s","color":"gold"},{"text":" died while carrying a flag so the flag has been placed back at the base.","color":"aqua"},"\n"]
execute as @a[tag=CarryFB1,tag=probablyDied,tag=!stopCheckingDeath] run tellraw @a[team=Yellow] ["","\n",{"text":"⚠ ","color":"red"},{"text":"Flag Restored! ","color":"blue"},{"selector":"@s","color":"gold"},{"text":" died while carrying a flag so the flag has been placed back at the base.","color":"aqua"},"\n"]
execute as @a[tag=CarryFB1,tag=probablyDied,tag=!stopCheckingDeath] run tellraw @a[team=Blue] ["","\n",{"text":"✔ ","color":"green"},{"selector":"@s","color":"gold"},{"text":" died while carrying a flag so the flag has been placed back at the base.","color":"aqua"},"\n"]

execute as @a[tag=CarryFB2,tag=probablyDied,tag=!stopCheckingDeath] run tellraw @a[team=!Yellow,team=!Blue] ["","\n",{"text":"Flag Restored! ","color":"blue"},{"selector":"@s","color":"gold"},{"text":" died while carrying a flag so the flag has been placed back at the base.","color":"aqua"},"\n"]
execute as @a[tag=CarryFB2,tag=probablyDied,tag=!stopCheckingDeath] run tellraw @a[team=Yellow] ["","\n",{"text":"⚠ ","color":"red"},{"text":"Flag Restored! ","color":"blue"},{"selector":"@s","color":"gold"},{"text":" died while carrying a flag so the flag has been placed back at the base.","color":"aqua"},"\n"]
execute as @a[tag=CarryFB2,tag=probablyDied,tag=!stopCheckingDeath] run tellraw @a[team=Blue] ["","\n",{"text":"✔ ","color":"green"},{"selector":"@s","color":"gold"},{"text":" died while carrying a flag so the flag has been placed back at the base.","color":"aqua"},"\n"]


execute as @a[tag=CarryFY1,tag=probablyDied,tag=!stopCheckingDeath] as @a[team=!Lobby] at @s run playsound minecraft:entity.evoker.cast_spell master @s ~ ~ ~ 1 1.7
execute as @a[tag=CarryFY2,tag=probablyDied,tag=!stopCheckingDeath] as @a[team=!Lobby] at @s run playsound minecraft:entity.evoker.cast_spell master @s ~ ~ ~ 1 1.7
execute as @a[tag=CarryFB1,tag=probablyDied,tag=!stopCheckingDeath] as @a[team=!Lobby] at @s run playsound minecraft:entity.evoker.cast_spell master @s ~ ~ ~ 1 1.7
execute as @a[tag=CarryFB2,tag=probablyDied,tag=!stopCheckingDeath] as @a[team=!Lobby] at @s run playsound minecraft:entity.evoker.cast_spell master @s ~ ~ ~ 1 1.7

tag @a[tag=CarryFlag,tag=probablyDied,tag=!stopCheckingDeath] remove CarryFY1
tag @a[tag=CarryFlag,tag=probablyDied,tag=!stopCheckingDeath] remove CarryFY2
tag @a[tag=CarryFlag,tag=probablyDied,tag=!stopCheckingDeath] remove CarryFB1
tag @a[tag=CarryFlag,tag=probablyDied,tag=!stopCheckingDeath] remove CarryFB2
execute as @a[tag=CarryFlag,tag=probablyDied] run scoreboard players reset @s FlagDeliver

tag @a[tag=probablyDied] add stopCheckingDeath

#Bossbars
function rr_ctf:everytick/bossbars

#Deliver Yellow flag at Blue base
execute as @e[type=player,team=Blue,tag=CarryFY1,tag=onBlue,tag=!probablyDied] run scoreboard players add @s FlagDeliver 1
execute as @e[type=player,team=Blue,tag=CarryFY1,tag=onBlue,tag=!probablyDied,scores={FlagDeliver=3..}] run scoreboard players add Blue: FlagDisp 1
execute as @e[type=player,team=Blue,tag=CarryFY1,tag=onBlue,tag=!probablyDied,scores={FlagDeliver=3..}] as @a[team=Blue] at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1.2
execute as @e[type=player,team=Blue,tag=CarryFY1,tag=onBlue,tag=!probablyDied,scores={FlagDeliver=3..}] as @a[team=Blue] at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 0.75
execute as @e[type=player,team=Blue,tag=CarryFY1,tag=onBlue,tag=!probablyDied,scores={FlagDeliver=3..}] as @a[team=Yellow] at @s run playsound minecraft:entity.wither.death master @s ~ ~ ~ 1 1
execute as @e[type=player,team=Blue,tag=CarryFY1,tag=onBlue,tag=!probablyDied,scores={FlagDeliver=3..}] run tellraw @a[team=Blue] ["","\n",{"text":"✔ ","color":"green"},{"selector":"@s","color":"blue"},{"text":" successfully captured a ","color":"yellow"},{"text":"Yellow","color":"gold"},{"text":" flag!","color":"yellow"},"\n"]
execute as @e[type=player,team=Blue,tag=CarryFY1,tag=onBlue,tag=!probablyDied,scores={FlagDeliver=3..}] run tellraw @a[team=Yellow] ["","\n",{"text":"⚠ ","color":"red"},{"selector":"@s","color":"blue"},{"text":" successfully captured your flag!","color":"yellow"},"\n"]
execute as @e[type=player,team=Blue,tag=CarryFY1,tag=onBlue,tag=!probablyDied,scores={FlagDeliver=3..}] run tellraw @a[team=!Yellow,team=!Blue] ["","\n",{"selector":"@s","color":"blue"},{"text":" successfully captured a","color":"yellow"},{"text":" Yellow","color":"gold"},{"text":" flag!","color":"yellow"},"\n"]
execute as @e[type=player,team=Blue,tag=CarryFY1,tag=onBlue,tag=!probablyDied,scores={FlagDeliver=3..}] run scoreboard players set FY1: FlagScore -2
execute as @e[type=player,team=Blue,tag=CarryFY1,tag=onBlue,tag=!probablyDied,scores={FlagDeliver=3..}] run scoreboard players add @s[scores={FlagsCaptured=..1}] FlagsCaptured 1
execute as @e[type=player,team=Blue,tag=CarryFY1,tag=onBlue,tag=!probablyDied,scores={FlagDeliver=3..}] run tag @s remove CarryFY1
execute as @e[type=player,team=Blue,tag=CarryFY1,tag=onBlue,tag=!probablyDied,scores={FlagDeliver=3..}] run scoreboard players reset @s FlagDeliver

execute as @e[type=player,team=Blue,tag=CarryFY2,tag=onBlue,tag=!probablyDied] run scoreboard players add @s FlagDeliver 1
execute as @e[type=player,team=Blue,tag=CarryFY2,tag=onBlue,tag=!probablyDied,scores={FlagDeliver=3..}] run scoreboard players add Blue: FlagDisp 1
execute as @e[type=player,team=Blue,tag=CarryFY2,tag=onBlue,tag=!probablyDied,scores={FlagDeliver=3..}] as @a[team=Blue] at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1.2
execute as @e[type=player,team=Blue,tag=CarryFY2,tag=onBlue,tag=!probablyDied,scores={FlagDeliver=3..}] as @a[team=Blue] at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 0.75
execute as @e[type=player,team=Blue,tag=CarryFY2,tag=onBlue,tag=!probablyDied,scores={FlagDeliver=3..}] as @a[team=Yellow] at @s run playsound minecraft:entity.wither.death master @s ~ ~ ~ 1 1
execute as @e[type=player,team=Blue,tag=CarryFY2,tag=onBlue,tag=!probablyDied,scores={FlagDeliver=3..}] run tellraw @a[team=Blue] ["","\n",{"text":"✔ ","color":"green"},{"selector":"@s","color":"blue"},{"text":" successfully captured a ","color":"green"},{"text":"Yellow","color":"gold"},{"text":" flag!","color":"yellow"},"\n"]
execute as @e[type=player,team=Blue,tag=CarryFY2,tag=onBlue,tag=!probablyDied,scores={FlagDeliver=3..}] run tellraw @a[team=Yellow] ["","\n",{"text":"⚠ ","color":"red"},{"selector":"@s","color":"blue"},{"text":" successfully captured your flag!","color":"yellow"},"\n"]
execute as @e[type=player,team=Blue,tag=CarryFY2,tag=onBlue,tag=!probablyDied,scores={FlagDeliver=3..}] run tellraw @a[team=!Yellow,team=!Blue] ["","\n",{"selector":"@s","color":"blue"},{"text":" successfully captured a","color":"aqua"},{"text":" Yellow","color":"gold"},{"text":" flag!","color":"yellow"},"\n"]
execute as @e[type=player,team=Blue,tag=CarryFY2,tag=onBlue,tag=!probablyDied,scores={FlagDeliver=3..}] run scoreboard players set FY2: FlagScore -2
execute as @e[type=player,team=Blue,tag=CarryFY2,tag=onBlue,tag=!probablyDied,scores={FlagDeliver=3..}] run scoreboard players add @s[scores={FlagsCaptured=..1}] FlagsCaptured 1
execute as @e[type=player,team=Blue,tag=CarryFY2,tag=onBlue,tag=!probablyDied,scores={FlagDeliver=3..}] run tag @s remove CarryFY2
execute as @e[type=player,team=Blue,tag=CarryFY2,tag=onBlue,tag=!probablyDied,scores={FlagDeliver=3..}] run scoreboard players reset @s FlagDeliver

#Deliver Blue flag at Yellow base
execute as @e[type=player,team=Yellow,tag=CarryFB1,tag=onYellow,tag=!probablyDied] run scoreboard players add @s FlagDeliver 1
execute as @e[type=player,team=Yellow,tag=CarryFB1,tag=onYellow,tag=!probablyDied,scores={FlagDeliver=3..}] run scoreboard players add Yellow: FlagDisp 1
execute as @e[type=player,team=Yellow,tag=CarryFB1,tag=onYellow,tag=!probablyDied,scores={FlagDeliver=3..}] as @a[team=Yellow] at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1.2
execute as @e[type=player,team=Yellow,tag=CarryFB1,tag=onYellow,tag=!probablyDied,scores={FlagDeliver=3..}] as @a[team=Yellow] at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 0.75
execute as @e[type=player,team=Yellow,tag=CarryFB1,tag=onYellow,tag=!probablyDied,scores={FlagDeliver=3..}] as @a[team=Blue] at @s run playsound minecraft:entity.wither.death master @s ~ ~ ~ 1 1
execute as @e[type=player,team=Yellow,tag=CarryFB1,tag=onYellow,tag=!probablyDied,scores={FlagDeliver=3..}] run tellraw @a[team=Yellow] ["","\n",{"text":"✔ ","color":"green"},{"selector":"@s","color":"gold"},{"text":" successfully captured a ","color":"aqua"},{"text":"Blue","color":"blue"},{"text":" flag!","color":"aqua"},"\n"]
execute as @e[type=player,team=Yellow,tag=CarryFB1,tag=onYellow,tag=!probablyDied,scores={FlagDeliver=3..}] run tellraw @a[team=Blue] ["","\n",{"text":"⚠ ","color":"red"},{"selector":"@s","color":"gold"},{"text":" successfully captured your flag!","color":"aqua"},"\n"]
execute as @e[type=player,team=Yellow,tag=CarryFB1,tag=onYellow,tag=!probablyDied,scores={FlagDeliver=3..}] run tellraw @a[team=!Yellow,team=!Blue] ["","\n",{"selector":"@s","color":"gold"},{"text":" successfully captured a","color":"aqua"},{"text":" Blue","color":"blue"},{"text":" flag!","color":"aqua"},"\n"]
execute as @e[type=player,team=Yellow,tag=CarryFB1,tag=onYellow,tag=!probablyDied,scores={FlagDeliver=3..}] run scoreboard players set FB1: FlagScore -2
execute as @e[type=player,team=Yellow,tag=CarryFB1,tag=onYellow,tag=!probablyDied,scores={FlagDeliver=3..}] run scoreboard players add @s[scores={FlagsCaptured=..1}] FlagsCaptured 1
execute as @e[type=player,team=Yellow,tag=CarryFB1,tag=onYellow,tag=!probablyDied,scores={FlagDeliver=3..}] run tag @s remove CarryFB1
execute as @e[type=player,team=Yellow,tag=CarryFB1,tag=onYellow,tag=!probablyDied,scores={FlagDeliver=3..}] run scoreboard players reset @s FlagDeliver

execute as @e[type=player,team=Yellow,tag=CarryFB2,tag=onYellow,tag=!probablyDied] run scoreboard players add @s FlagDeliver 1
execute as @e[type=player,team=Yellow,tag=CarryFB2,tag=onYellow,tag=!probablyDied,scores={FlagDeliver=3..}] run scoreboard players add Yellow: FlagDisp 1
execute as @e[type=player,team=Yellow,tag=CarryFB2,tag=onYellow,tag=!probablyDied,scores={FlagDeliver=3..}] as @a[team=Yellow] at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1.2
execute as @e[type=player,team=Yellow,tag=CarryFB2,tag=onYellow,tag=!probablyDied,scores={FlagDeliver=3..}] as @a[team=Yellow] at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 0.75
execute as @e[type=player,team=Yellow,tag=CarryFB2,tag=onYellow,tag=!probablyDied,scores={FlagDeliver=3..}] as @a[team=Blue] at @s run playsound minecraft:entity.wither.death master @s ~ ~ ~ 1 1
execute as @e[type=player,team=Yellow,tag=CarryFB2,tag=onYellow,tag=!probablyDied,scores={FlagDeliver=3..}] run tellraw @a[team=Yellow] ["","\n",{"text":"✔ ","color":"green"},{"selector":"@s","color":"gold"},{"text":" successfully captured a ","color":"aqua"},{"text":"Blue","color":"blue"},{"text":" flag!","color":"aqua"},"\n"]
execute as @e[type=player,team=Yellow,tag=CarryFB2,tag=onYellow,tag=!probablyDied,scores={FlagDeliver=3..}] run tellraw @a[team=Blue] ["","\n",{"text":"⚠ ","color":"red"},{"selector":"@s","color":"gold"},{"text":" successfully captured your flag!","color":"aqua"},"\n"]
execute as @e[type=player,team=Yellow,tag=CarryFB2,tag=onYellow,tag=!probablyDied,scores={FlagDeliver=3..}] run tellraw @a[team=!Yellow,team=!Blue] ["","\n",{"selector":"@s","color":"gold"},{"text":" successfully captured a","color":"aqua"},{"text":" Blue","color":"blue"},{"text":" flag!","color":"aqua"},"\n"]
execute as @e[type=player,team=Yellow,tag=CarryFB2,tag=onYellow,tag=!probablyDied,scores={FlagDeliver=3..}] run scoreboard players set FB2: FlagScore -2
execute as @e[type=player,team=Yellow,tag=CarryFB2,tag=onYellow,tag=!probablyDied,scores={FlagDeliver=3..}] run scoreboard players add @s[scores={FlagsCaptured=..1}] FlagsCaptured 1
execute as @e[type=player,team=Yellow,tag=CarryFB2,tag=onYellow,tag=!probablyDied,scores={FlagDeliver=3..}] run tag @s remove CarryFB2
execute as @e[type=player,team=Yellow,tag=CarryFB2,tag=onYellow,tag=!probablyDied,scores={FlagDeliver=3..}] run scoreboard players reset @s FlagDeliver

item replace entity @a[tag=CarryFlag,tag=!CarryFY1,tag=!CarryFY2,tag=!CarryFB1,tag=!CarryFB2] armor.head with air

execute as @a[tag=CarryFlag] unless entity @s[scores={FlagScore=110..}] run scoreboard players add @s FlagScore 1

execute as @a[tag=CarryFY1,scores={FlagScore=1}] run item replace entity @s armor.head with yellow_banner{Enchantments:[{id:"binding_curse",lvl:1}],HideFlags:7}
execute as @a[tag=CarryFY1,scores={FlagScore=1}] run fill 34 65 63 30 72 64 air replace yellow_wool
execute as @a[tag=CarryFY2,scores={FlagScore=1}] run item replace entity @s armor.head with yellow_banner{Enchantments:[{id:"binding_curse",lvl:1}],HideFlags:7}
execute as @a[tag=CarryFY2,scores={FlagScore=1}] run fill -10 66 64 -14 65 63 air replace yellow_wool
execute as @a[tag=CarryFB1,scores={FlagScore=1}] run item replace entity @s armor.head with blue_banner{Enchantments:[{id:"binding_curse",lvl:1}],HideFlags:7}
execute as @a[tag=CarryFB1,scores={FlagScore=1}] run fill -14 65 -64 -10 66 -65 air replace blue_wool
execute as @a[tag=CarryFB2,scores={FlagScore=1}] run item replace entity @s armor.head with blue_banner{Enchantments:[{id:"binding_curse",lvl:1}],HideFlags:7}
execute as @a[tag=CarryFB2,scores={FlagScore=1}] run fill 30 65 -64 34 66 -65 air replace blue_wool
execute as @a[tag=CarryFlag,scores={FlagScore=1}] as @a[team=!Lobby] at @s run playsound entity.ender_dragon.flap master @s ~ ~ ~ 1 2


execute as @a[tag=CarryFlag,team=Blue,scores={FlagScore=1}] at @s run tellraw @a[team=!Yellow,team=!Blue] ["","\n",{"selector":"@s","color":"blue"},{"text":" stole a ","color":"yellow"},{"text":"Yellow","color":"gold"},{"text":" flag!","color":"yellow"},"\n"]
execute as @a[tag=CarryFlag,team=Blue,scores={FlagScore=1}] at @s run tellraw @a[team=Blue] ["","\n",{"text":"✔ ","color":"green"},{"selector":"@s","color":"blue"},{"text":" stole a ","color":"yellow"},{"text":"Yellow","color":"gold"},{"text":" flag!","color":"yellow"},"\n"]
execute as @a[tag=CarryFlag,team=Blue,scores={FlagScore=1}] at @s run tellraw @a[team=Yellow] ["","\n",{"text":"⚠ ","color":"red"},{"selector":"@s","color":"blue"},{"text":" stole your flag!","color":"yellow"},"\n"]


execute as @a[tag=CarryFlag,team=Yellow,scores={FlagScore=1}] at @s run tellraw @a[team=!Yellow,team=!Blue] ["","\n",{"selector":"@s","color":"gold"},{"text":" stole a ","color":"aqua"},{"text":"Blue","color":"blue"},{"text":" flag!","color":"aqua"},"\n"]
execute as @a[tag=CarryFlag,team=Yellow,scores={FlagScore=1}] at @s run tellraw @a[team=Yellow] ["","\n",{"text":"✔ ","color":"green"},{"selector":"@s","color":"gold"},{"text":" stole a ","color":"aqua"},{"text":"Blue","color":"blue"},{"text":" flag!","color":"aqua"},"\n"]
execute as @a[tag=CarryFlag,team=Yellow,scores={FlagScore=1}] at @s run tellraw @a[team=Blue] ["","\n",{"text":"⚠ ","color":"red"},{"selector":"@s","color":"gold"},{"text":" stole your flag!","color":"aqua"},"\n"]
effect give @a[tag=CarryFlag,scores={FlagScore=1}] glowing 1000000 0 true
effect give @a[tag=CarryFlag,scores={FlagScore=1}] resistance 1000000 0 true
effect give @a[tag=CarryFlag,scores={FlagScore=1}] strength 1000000 0 true
effect give @a[tag=CarryFlag,scores={FlagScore=1}] absorption 1000000 0 true

#function rr_ctf:everytick/particlebeams