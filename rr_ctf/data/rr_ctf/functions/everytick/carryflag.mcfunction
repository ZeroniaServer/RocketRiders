#Restore flag when carrier dies
execute as @a[tag=CarryFY1,tag=probablyDied] run scoreboard players set FY1: FlagScore 0
execute as @a[tag=CarryFY2,tag=probablyDied] run scoreboard players set FY2: FlagScore 0
execute as @a[tag=CarryFB1,tag=probablyDied] run scoreboard players set FB1: FlagScore 0
execute as @a[tag=CarryFB2,tag=probablyDied] run scoreboard players set FB2: FlagScore 0

execute as @a[tag=CarryFY1,tag=probablyDied] run tellraw @a ["",{"text":"Flag Restored! ","color":"gold"},{"selector":"@s","color":"blue"},{"text":" died while carrying a flag so the flag has been placed back at the base.","color":"yellow"}]
execute as @a[tag=CarryFY2,tag=probablyDied] run tellraw @a ["",{"text":"Flag Restored! ","color":"gold"},{"selector":"@s","color":"blue"},{"text":" died while carrying a flag so the flag has been placed back at the base.","color":"yellow"}]
execute as @a[tag=CarryFB1,tag=probablyDied] run tellraw @a ["",{"text":"Flag Restored! ","color":"blue"},{"selector":"@s","color":"gold"},{"text":" died while carrying a flag so the flag has been placed back at the base.","color":"aqua"}]
execute as @a[tag=CarryFB2,tag=probablyDied] run tellraw @a ["",{"text":"Flag Restored! ","color":"blue"},{"selector":"@s","color":"gold"},{"text":" died while carrying a flag so the flag has been placed back at the base.","color":"aqua"}]

execute as @a[tag=CarryFY1,tag=probablyDied] as @a[team=!Lobby] at @s run playsound minecraft:entity.evoker.cast_spell player @s ~ ~ ~ 1 1.7
execute as @a[tag=CarryFY2,tag=probablyDied] as @a[team=!Lobby] at @s run playsound minecraft:entity.evoker.cast_spell player @s ~ ~ ~ 1 1.7
execute as @a[tag=CarryFB1,tag=probablyDied] as @a[team=!Lobby] at @s run playsound minecraft:entity.evoker.cast_spell player @s ~ ~ ~ 1 1.7
execute as @a[tag=CarryFB2,tag=probablyDied] as @a[team=!Lobby] at @s run playsound minecraft:entity.evoker.cast_spell player @s ~ ~ ~ 1 1.7

tag @a[tag=CarryFlag,tag=probablyDied] remove CarryFY1
tag @a[tag=CarryFlag,tag=probablyDied] remove CarryFY2
tag @a[tag=CarryFlag,tag=probablyDied] remove CarryFB1
tag @a[tag=CarryFlag,tag=probablyDied] remove CarryFB2

#Deliver Yellow flag at Blue base
execute as @a[team=Blue,tag=CarryFY1,tag=onBlue,tag=!probablyDied] run scoreboard players add Blue: FlagDisp 1
execute as @a[team=Blue,tag=CarryFY1,tag=onBlue,tag=!probablyDied] as @a[team=Blue] at @s run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 1.2
execute as @a[team=Blue,tag=CarryFY1,tag=onBlue,tag=!probablyDied] as @a[team=Blue] at @s run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 0.75
execute as @a[team=Blue,tag=CarryFY1,tag=onBlue,tag=!probablyDied] as @a[team=Yellow] at @s run playsound minecraft:entity.wither.death player @s ~ ~ ~ 1 1
execute as @a[team=Blue,tag=CarryFY1,tag=onBlue,tag=!probablyDied] run tellraw @a ["",{"selector":"@s","color":"blue"},{"text":" successfully captured a","color":"aqua"},{"text":" Yellow","color":"gold"},{"text":" flag!","color":"aqua"}]
execute as @a[team=Blue,tag=CarryFY1,tag=onBlue,tag=!probablyDied] run scoreboard players set FY1: FlagScore -2
execute as @a[team=Blue,tag=CarryFY1,tag=onBlue,tag=!probablyDied] run scoreboard players add @s FlagsCaptured 1
execute as @a[team=Blue,tag=CarryFY1,tag=onBlue,tag=!probablyDied] run tag @s remove CarryFY1

execute as @a[team=Blue,tag=CarryFY2,tag=onBlue,tag=!probablyDied] run scoreboard players add Blue: FlagDisp 1
execute as @a[team=Blue,tag=CarryFY2,tag=onBlue,tag=!probablyDied] as @a[team=Blue] at @s run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 1.2
execute as @a[team=Blue,tag=CarryFY2,tag=onBlue,tag=!probablyDied] as @a[team=Blue] at @s run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 0.75
execute as @a[team=Blue,tag=CarryFY2,tag=onBlue,tag=!probablyDied] as @a[team=Yellow] at @s run playsound minecraft:entity.wither.death player @s ~ ~ ~ 1 1
execute as @a[team=Blue,tag=CarryFY2,tag=onBlue,tag=!probablyDied] run tellraw @a ["",{"selector":"@s","color":"blue"},{"text":" successfully captured a","color":"aqua"},{"text":" Yellow","color":"gold"},{"text":" flag!","color":"aqua"}]
execute as @a[team=Blue,tag=CarryFY2,tag=onBlue,tag=!probablyDied] run scoreboard players set FY2: FlagScore -2
execute as @a[team=Blue,tag=CarryFY2,tag=onBlue,tag=!probablyDied] run scoreboard players add @s FlagsCaptured 1
execute as @a[team=Blue,tag=CarryFY2,tag=onBlue,tag=!probablyDied] run tag @s remove CarryFY2

#Deliver Blue flag at Yellow base
execute as @a[team=Yellow,tag=CarryFB1,tag=onYellow,tag=!probablyDied] run scoreboard players add Yellow: FlagDisp 1
execute as @a[team=Yellow,tag=CarryFB1,tag=onYellow,tag=!probablyDied] as @a[team=Yellow] at @s run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 1.2
execute as @a[team=Yellow,tag=CarryFB1,tag=onYellow,tag=!probablyDied] as @a[team=Yellow] at @s run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 0.75
execute as @a[team=Yellow,tag=CarryFB1,tag=onYellow,tag=!probablyDied] as @a[team=Blue] at @s run playsound minecraft:entity.wither.death player @s ~ ~ ~ 1 1
execute as @a[team=Yellow,tag=CarryFB1,tag=onYellow,tag=!probablyDied] run tellraw @a ["",{"selector":"@s","color":"gold"},{"text":" successfully captured a","color":"yellow"},{"text":" Blue","color":"blue"},{"text":" flag!","color":"yellow"}]
execute as @a[team=Yellow,tag=CarryFB1,tag=onYellow,tag=!probablyDied] run scoreboard players set FB1: FlagScore -2
execute as @a[team=Yellow,tag=CarryFB1,tag=onYellow,tag=!probablyDied] run scoreboard players add @s FlagsCaptured 1
execute as @a[team=Yellow,tag=CarryFB1,tag=onYellow,tag=!probablyDied] run tag @s remove CarryFB1

execute as @a[team=Yellow,tag=CarryFB2,tag=onYellow,tag=!probablyDied] run scoreboard players add Yellow: FlagDisp 1
execute as @a[team=Yellow,tag=CarryFB2,tag=onYellow,tag=!probablyDied] as @a[team=Yellow] at @s run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 1.2
execute as @a[team=Yellow,tag=CarryFB2,tag=onYellow,tag=!probablyDied] as @a[team=Yellow] at @s run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 0.75
execute as @a[team=Yellow,tag=CarryFB2,tag=onYellow,tag=!probablyDied] as @a[team=Blue] at @s run playsound minecraft:entity.wither.death player @s ~ ~ ~ 1 1
execute as @a[team=Yellow,tag=CarryFB2,tag=onYellow,tag=!probablyDied] run tellraw @a ["",{"selector":"@s","color":"gold"},{"text":" successfully captured a","color":"yellow"},{"text":" Blue","color":"blue"},{"text":" flag!","color":"yellow"}]
execute as @a[team=Yellow,tag=CarryFB2,tag=onYellow,tag=!probablyDied] run scoreboard players set FB2: FlagScore -2
execute as @a[team=Yellow,tag=CarryFB2,tag=onYellow,tag=!probablyDied] run scoreboard players add @s FlagsCaptured 1
execute as @a[team=Yellow,tag=CarryFB2,tag=onYellow,tag=!probablyDied] run tag @s remove CarryFB2

replaceitem entity @a[tag=CarryFlag,tag=!CarryFY1,tag=!CarryFY2,tag=!CarryFB1,tag=!CarryFB2] armor.head air
tag @a[tag=!CarryFY1,tag=!CarryFY2,tag=!CarryFB1,tag=!CarryFB2] remove CarryFlag

tag @a[tag=CarryFlag] add FlipMissile
tag @a[tag=!CarryFlag] remove FlipMissile

scoreboard players add @a[tag=CarryFlag] FlagScore 1
scoreboard players reset @a[tag=!CarryFlag] FlagScore

execute as @a[tag=CarryFY1,scores={FlagScore=1}] run replaceitem entity @s armor.head yellow_banner{Enchantments:[{id:binding_curse,lvl:1}],HideFlags:7}
execute as @a[tag=CarryFY1,scores={FlagScore=1}] run fill 34 65 63 30 72 64 air replace yellow_wool
execute as @a[tag=CarryFY2,scores={FlagScore=1}] run replaceitem entity @s armor.head yellow_banner{Enchantments:[{id:binding_curse,lvl:1}],HideFlags:7}
execute as @a[tag=CarryFY2,scores={FlagScore=1}] run fill -10 66 64 -14 65 63 air replace yellow_wool
execute as @a[tag=CarryFB1,scores={FlagScore=1}] run replaceitem entity @s armor.head blue_banner{Enchantments:[{id:binding_curse,lvl:1}],HideFlags:7}
execute as @a[tag=CarryFB1,scores={FlagScore=1}] run fill -14 65 -64 -10 66 -65 air replace blue_wool
execute as @a[tag=CarryFB2,scores={FlagScore=1}] run replaceitem entity @s armor.head blue_banner{Enchantments:[{id:binding_curse,lvl:1}],HideFlags:7}
execute as @a[tag=CarryFB2,scores={FlagScore=1}] run fill 30 65 -64 34 66 -65 air replace blue_wool
execute as @a[tag=CarryFlag,scores={FlagScore=1}] as @a[team=!Lobby] at @s run playsound entity.ender_dragon.flap player @s ~ ~ ~ 1 2
execute as @a[tag=CarryFlag,team=Blue,scores={FlagScore=1}] at @s run tellraw @a ["",{"selector":"@s","color":"blue"},{"text":" stole a ","color":"aqua"},{"text":"Yellow","color":"gold"},{"text":" flag!","color":"aqua"}]
execute as @a[tag=CarryFlag,team=Yellow,scores={FlagScore=1}] at @s run tellraw @a ["",{"selector":"@s","color":"gold"},{"text":" stole a ","color":"yellow"},{"text":"Blue","color":"blue"},{"text":" flag!","color":"yellow"}]
effect give @a[tag=CarryFlag] glowing 1 100 true