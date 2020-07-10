#Clear flag etc from people who fall in the void or die
execute as @a[tag=CarryFY1,scores={deathCooldown=1}] run scoreboard players set FY1: FlagScore 0
execute as @a[tag=CarryFY1,scores={deathCooldown=1}] run tellraw @a ["",{"text":"Flag Restored! ","color":"gold"},{"selector":"@s","color":"blue"},{"text":" died while carrying a flag so the flag has been placed back at the base.","color":"yellow"}]
execute as @a[tag=CarryFY2,scores={deathCooldown=1}] run scoreboard players set FY2: FlagScore 0
execute as @a[tag=CarryFY2,scores={deathCooldown=1}] run tellraw @a ["",{"text":"Flag Restored! ","color":"gold"},{"selector":"@s","color":"blue"},{"text":" died while carrying a flag so the flag has been placed back at the base.","color":"yellow"}]
execute as @a[tag=CarryFB1,scores={deathCooldown=1}] run scoreboard players set FB1: FlagScore 0
execute as @a[tag=CarryFB1,scores={deathCooldown=1}] run tellraw @a ["",{"text":"Flag Restored! ","color":"blue"},{"selector":"@s","color":"gold"},{"text":" died while carrying a flag so the flag has been placed back at the base.","color":"aqua"}]
execute as @a[tag=CarryFB2,scores={deathCooldown=1}] run scoreboard players set FB2: FlagScore 0
execute as @a[tag=CarryFB2,scores={deathCooldown=1}] run tellraw @a ["",{"text":"Flag Restored! ","color":"blue"},{"selector":"@s","color":"gold"},{"text":" died while carrying a flag so the flag has been placed back at the base.","color":"aqua"}]
tag @a[tag=CarryFlag,scores={deathCooldown=1}] remove CarryFY1
tag @a[tag=CarryFlag,scores={deathCooldown=1}] remove CarryFY2
tag @a[tag=CarryFlag,scores={deathCooldown=1}] remove CarryFB1
tag @a[tag=CarryFlag,scores={deathCooldown=1}] remove CarryFB2

execute as @a[tag=CarryFY1,predicate=custom:nearvoid] run scoreboard players set FY1: FlagScore 0
execute as @a[tag=CarryFY2,predicate=custom:nearvoid] run scoreboard players set FY2: FlagScore 0
execute as @a[tag=CarryFB1,predicate=custom:nearvoid] run scoreboard players set FB1: FlagScore 0
execute as @a[tag=CarryFB2,predicate=custom:nearvoid] run scoreboard players set FB2: FlagScore 0


execute as @a[tag=CarryFB1,predicate=custom:nearvoid] run tellraw @a ["",{"text":"Flag Restored! ","color":"blue"},{"selector":"@s","color":"gold"},{"text":" died while carrying a flag so the flag has been placed back at the base.","color":"aqua"}]
execute as @a[tag=CarryFB2,predicate=custom:nearvoid] run tellraw @a ["",{"text":"Flag Restored! ","color":"blue"},{"selector":"@s","color":"gold"},{"text":" died while carrying a flag so the flag has been placed back at the base.","color":"aqua"}]
execute as @a[tag=CarryFY1,predicate=custom:nearvoid] run tellraw @a ["",{"text":"Flag Restored! ","color":"gold"},{"selector":"@s","color":"blue"},{"text":" died while carrying a flag so the flag has been placed back at the base.","color":"yellow"}]
execute as @a[tag=CarryFY2,predicate=custom:nearvoid] run tellraw @a ["",{"text":"Flag Restored! ","color":"gold"},{"selector":"@s","color":"blue"},{"text":" died while carrying a flag so the flag has been placed back at the base.","color":"yellow"}]

tag @a[tag=CarryFlag,predicate=custom:nearvoid] remove CarryFY1
tag @a[tag=CarryFlag,predicate=custom:nearvoid] remove CarryFY2
tag @a[tag=CarryFlag,predicate=custom:nearvoid] remove CarryFB1
tag @a[tag=CarryFlag,predicate=custom:nearvoid] remove CarryFB2


#Deliver Yellow flag at Blue base
execute as @a[team=Blue,tag=CarryFY1,tag=onBlue,scores={respawn=0}] run scoreboard players add Blue: FlagScore 1
execute as @a[team=Blue,tag=CarryFY1,tag=onBlue,scores={respawn=0}] run tellraw @a ["",{"selector":"@s","color":"blue"},{"text":" successfully captured a","color":"aqua"},{"text":" Yellow","color":"gold"},{"text":" flag!","color":"aqua"}]
execute as @a[team=Blue,tag=CarryFY1,tag=onBlue,scores={respawn=0}] run scoreboard players set FY1: FlagScore -2
execute as @a[team=Blue,tag=CarryFY1,tag=onBlue,scores={respawn=0}] run tag @s remove CarryFY1

execute as @a[team=Blue,tag=CarryFY2,tag=onBlue,scores={respawn=0}] run scoreboard players add Blue: FlagScore 1
execute as @a[team=Blue,tag=CarryFY2,tag=onBlue,scores={respawn=0}] run tellraw @a ["",{"selector":"@s","color":"blue"},{"text":" successfully captured a","color":"aqua"},{"text":" Yellow","color":"gold"},{"text":" flag!","color":"aqua"}]
execute as @a[team=Blue,tag=CarryFY2,tag=onBlue,scores={respawn=0}] run scoreboard players set FY2: FlagScore -2
execute as @a[team=Blue,tag=CarryFY2,tag=onBlue,scores={respawn=0}] run tag @s remove CarryFY2

#Deliver Blue flag at Yellow base
execute as @a[team=Yellow,tag=CarryFB1,tag=onYellow,scores={respawn=0}] run scoreboard players add Yellow: FlagScore 1
execute as @a[team=Yellow,tag=CarryFB1,tag=onYellow,scores={respawn=0}] run tellraw @a ["",{"selector":"@s","color":"gold"},{"text":" successfully captured a","color":"yellow"},{"text":" Blue","color":"blue"},{"text":" flag!","color":"yellow"}]
execute as @a[team=Yellow,tag=CarryFB1,tag=onYellow,scores={respawn=0}] run scoreboard players set FB1: FlagScore -2
execute as @a[team=Yellow,tag=CarryFB1,tag=onYellow,scores={respawn=0}] run tag @s remove CarryFB1

execute as @a[team=Yellow,tag=CarryFB2,tag=onYellow,scores={respawn=0}] run scoreboard players add Yellow: FlagScore 1
execute as @a[team=Yellow,tag=CarryFB2,tag=onYellow,scores={respawn=0}] run tellraw @a ["",{"selector":"@s","color":"gold"},{"text":" successfully captured a","color":"yellow"},{"text":" Blue","color":"blue"},{"text":" flag!","color":"yellow"}]
execute as @a[team=Yellow,tag=CarryFB2,tag=onYellow,scores={respawn=0}] run scoreboard players set FB2: FlagScore -2
execute as @a[team=Yellow,tag=CarryFB2,tag=onYellow,scores={respawn=0}] run tag @s remove CarryFB2

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
execute as @a[tag=CarryFlag,scores={FlagScore=1}] at @s run playsound entity.ender_dragon.flap player @a ~ ~ ~ 1 2
execute as @a[tag=CarryFlag,team=Blue,scores={FlagScore=1}] at @s run tellraw @a ["",{"selector":"@s","color":"blue"},{"text":" stole a ","color":"aqua"},{"text":"Yellow","color":"gold"},{"text":" flag!","color":"aqua"}]
execute as @a[tag=CarryFlag,team=Yellow,scores={FlagScore=1}] at @s run tellraw @a ["",{"selector":"@s","color":"gold"},{"text":" stole a ","color":"yellow"},{"text":"Blue","color":"blue"},{"text":" flag!","color":"yellow"}]
effect give @a[tag=CarryFlag] glowing 1 100 true