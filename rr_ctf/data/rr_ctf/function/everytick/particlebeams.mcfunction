#particle trails for flag carriers - everyone but you can see it (and no one in lobby) - Slightly thicker when further away
execute if predicate custom:periodic_tick/3 as @a[x=0,tag=CarryFlag,team=Blue] at @s anchored eyes run particle minecraft:dust{color:[0,0,1],scale:1} ~ ~28 ~ 0 10 0 1 100 force @a[tag=!hideParticles,team=!Lobby,distance=10..40,predicate=custom:belowroof]
execute if predicate custom:periodic_tick/3 as @a[x=0,tag=CarryFlag,team=Yellow] at @s anchored eyes run particle minecraft:dust{color:[1,1,0],scale:1} ~ ~28 ~ 0 10 0 1 100 force @a[tag=!hideParticles,team=!Lobby,distance=10..40,predicate=custom:belowroof]

#distant different-colored line
execute if predicate custom:periodic_tick/3 as @a[x=0,tag=CarryFlag,team=Blue] at @s anchored eyes run particle minecraft:dust{color:[0,1,1],scale:1} ~ ~3 ~ 0.2 0.5 0.2 1 10 force @a[tag=!hideParticles,team=!Lobby,distance=30..,predicate=custom:belowroof]
execute if predicate custom:periodic_tick/3 as @a[x=0,tag=CarryFlag,team=Yellow] at @s anchored eyes run particle minecraft:dust{color:[1.0,0.75,0.0],scale:1} ~ ~3 ~ 0.2 0.5 0.2 1 10 force @a[tag=!hideParticles,team=!Lobby,distance=30..,predicate=custom:belowroof]

#distant thicker
execute if predicate custom:periodic_tick/3 as @a[x=0,tag=CarryFlag,team=Blue] at @s anchored eyes run particle minecraft:dust{color:[0,0,1],scale:1} ~ ~28 ~ 0.1 10 0.1 1 100 force @a[tag=!hideParticles,team=!Lobby,distance=40..80,predicate=custom:belowroof]
execute if predicate custom:periodic_tick/3 as @a[x=0,tag=CarryFlag,team=Yellow] at @s anchored eyes run particle minecraft:dust{color:[1,1,0],scale:1} ~ ~28 ~ 0.1 10 0.1 1 100 force @a[tag=!hideParticles,team=!Lobby,distance=40..80,predicate=custom:belowroof]

#distant thickest
execute if predicate custom:periodic_tick/3 as @a[x=0,tag=CarryFlag,team=Blue] at @s anchored eyes run particle minecraft:dust{color:[0,0,1],scale:1} ~ ~28 ~ 0.15 10 0.15 1 100 force @a[tag=!hideParticles,team=!Lobby,distance=80..,predicate=custom:belowroof]
execute if predicate custom:periodic_tick/3 as @a[x=0,tag=CarryFlag,team=Yellow] at @s anchored eyes run particle minecraft:dust{color:[1,1,0],scale:1} ~ ~28 ~ 0.15 10 0.15 1 100 force @a[tag=!hideParticles,team=!Lobby,distance=80..,predicate=custom:belowroof]


#Fancy spinny particles
execute as @e[x=0,type=marker,tag=FlagParticleBlue] at @s unless entity @e[type=player,tag=CarryFlag,team=Blue,distance=..4,limit=1] run kill @s
execute as @e[x=0,type=marker,tag=FlagParticleYellow] at @s unless entity @e[type=player,tag=CarryFlag,team=Yellow,distance=..4,limit=1] run kill @s

execute as @a[x=0,tag=CarryFlag,team=Blue] at @s unless entity @e[type=marker,tag=FlagParticleBlue,distance=..4,limit=1] run summon marker ~ ~ ~ {Tags:["FlagParticle","FlagParticleBlue"]}
execute as @a[x=0,tag=CarryFlag,team=Yellow] at @s unless entity @e[type=marker,tag=FlagParticleYellow,distance=..4,limit=1] run summon marker ~ ~ ~ {Tags:["FlagParticle","FlagParticleYellow"]}

execute as @a[x=0,tag=CarryFlag,team=Blue] anchored eyes at @s run tp @e[x=0,type=marker,tag=FlagParticleBlue,limit=1,sort=nearest] ~ ~1 ~
execute as @a[x=0,tag=CarryFlag,team=Yellow] anchored eyes at @s run tp @e[x=0,type=marker,tag=FlagParticleYellow,limit=1,sort=nearest] ~ ~1 ~

execute as @e[x=0,type=marker,tag=FlagParticle,y_rotation=120,x_rotation=90] run tag @s add FPMoveOpposite
execute as @e[x=0,type=marker,tag=FlagParticle,y_rotation=120,x_rotation=-90] run tag @s remove FPMoveOpposite

execute as @e[x=0,type=marker,tag=FlagParticle,tag=!FPMoveOpposite] at @s run tp @s ~ ~ ~ ~15 ~3
execute as @e[x=0,type=marker,tag=FlagParticle,tag=FPMoveOpposite] at @s run tp @s ~ ~ ~ ~-15 ~-3

scoreboard players add @e[x=0,type=marker,tag=FlagParticle] CmdData 1
scoreboard players reset @e[x=0,type=marker,tag=FlagParticle,scores={CmdData=150..}] CmdData

execute if predicate custom:periodic_tick/3 as @e[x=0,type=marker,tag=FlagParticleBlue,scores={CmdData=..75}] at @s run particle minecraft:dust{color:[0,0,1],scale:1.5} ^ ^ ^1.2 0 0 0 0 1 force @a[tag=!hideParticles,team=!Lobby,distance=2..,predicate=custom:belowroof]
execute if predicate custom:periodic_tick/3 as @e[x=0,type=marker,tag=FlagParticleYellow,scores={CmdData=..75}] at @s run particle minecraft:dust{color:[1,1,0],scale:1.5} ^ ^ ^1.2 0 0 0 0 1 force @a[tag=!hideParticles,team=!Lobby,distance=2..,predicate=custom:belowroof]
execute if predicate custom:periodic_tick/3 as @e[x=0,type=marker,tag=FlagParticleBlue,scores={CmdData=..75}] at @s run particle minecraft:dust{color:[0,0,1],scale:1.5} ^ ^ ^-1.2 0 0 0 0 1 force @a[tag=!hideParticles,team=!Lobby,distance=2..,predicate=custom:belowroof]
execute if predicate custom:periodic_tick/3 as @e[x=0,type=marker,tag=FlagParticleYellow,scores={CmdData=..75}] at @s run particle minecraft:dust{color:[1,1,0],scale:1.5} ^ ^ ^-1.2 0 0 0 0 1 force @a[tag=!hideParticles,team=!Lobby,distance=2..,predicate=custom:belowroof]

execute if predicate custom:periodic_tick/3 as @e[x=0,type=marker,tag=FlagParticleBlue,scores={CmdData=75..150}] at @s run particle minecraft:dust{color:[0,1,2],scale:1.5} ^ ^ ^1.2 0 0 0 0 1 force @a[tag=!hideParticles,team=!Lobby,distance=2..,predicate=custom:belowroof]
execute if predicate custom:periodic_tick/3 as @e[x=0,type=marker,tag=FlagParticleYellow,scores={CmdData=75..150}] at @s run particle minecraft:dust{color:[1.0,0.75,0.0],scale:1.5} ^ ^ ^1.2 0 0 0 0 1 force @a[tag=!hideParticles,team=!Lobby,distance=2..,predicate=custom:belowroof]
execute if predicate custom:periodic_tick/3 as @e[x=0,type=marker,tag=FlagParticleBlue,scores={CmdData=75..150}] at @s run particle minecraft:dust{color:[0,1,2],scale:1.5} ^ ^ ^-1.2 0 0 0 0 1 force @a[tag=!hideParticles,team=!Lobby,distance=2..,predicate=custom:belowroof]
execute if predicate custom:periodic_tick/3 as @e[x=0,type=marker,tag=FlagParticleYellow,scores={CmdData=75..150}] at @s run particle minecraft:dust{color:[1.0,0.75,0.0],scale:1.5} ^ ^ ^-1.2 0 0 0 0 1 force @a[tag=!hideParticles,team=!Lobby,distance=2..,predicate=custom:belowroof]

execute as @e[x=0,type=marker,tag=FlagParticle] run tellraw @a {score:{name:"@s",objective:"CmdData"}}