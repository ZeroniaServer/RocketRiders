#particle trails for flag carriers - everyone but you can see it (and no one in lobby) - Slightly thicker when further away
execute as @a[predicate=custom:indimension,tag=CarryFlag,team=Blue] at @s anchored eyes if score $dust CmdData matches 1 run particle minecraft:dust 0 0 1 1 ~ ~28 ~ 0 10 0 1 100 force @a[predicate=custom:indimension,tag=!hideParticles,team=!Lobby,distance=10..40,predicate=custom:belowroof]
execute as @a[predicate=custom:indimension,tag=CarryFlag,team=Yellow] at @s anchored eyes if score $dust CmdData matches 1 run particle minecraft:dust 1 1 0 1 ~ ~28 ~ 0 10 0 1 100 force @a[predicate=custom:indimension,tag=!hideParticles,team=!Lobby,distance=10..40,predicate=custom:belowroof]

#distant different-colored line
execute as @a[predicate=custom:indimension,tag=CarryFlag,team=Blue] at @s anchored eyes if score $dust CmdData matches 1 run particle minecraft:dust 0 1 1 1 ~ ~3 ~ 0.2 0.5 0.2 1 10 force @a[predicate=custom:indimension,tag=!hideParticles,team=!Lobby,distance=30..,predicate=custom:belowroof]
execute as @a[predicate=custom:indimension,tag=CarryFlag,team=Yellow] at @s anchored eyes if score $dust CmdData matches 1 run particle minecraft:dust 1 2 0 1 ~ ~3 ~ 0.2 0.5 0.2 1 10 force @a[predicate=custom:indimension,tag=!hideParticles,team=!Lobby,distance=30..,predicate=custom:belowroof]

#distant thicker
execute as @a[predicate=custom:indimension,tag=CarryFlag,team=Blue] at @s anchored eyes if score $dust CmdData matches 1 run particle minecraft:dust 0 0 1 1 ~ ~28 ~ 0.1 10 0.1 1 100 force @a[predicate=custom:indimension,tag=!hideParticles,team=!Lobby,distance=40..80,predicate=custom:belowroof]
execute as @a[predicate=custom:indimension,tag=CarryFlag,team=Yellow] at @s anchored eyes if score $dust CmdData matches 1 run particle minecraft:dust 1 1 0 1 ~ ~28 ~ 0.1 10 0.1 1 100 force @a[predicate=custom:indimension,tag=!hideParticles,team=!Lobby,distance=40..80,predicate=custom:belowroof]

#distant thickest
execute as @a[predicate=custom:indimension,tag=CarryFlag,team=Blue] at @s anchored eyes if score $dust CmdData matches 1 run particle minecraft:dust 0 0 1 1 ~ ~28 ~ 0.15 10 0.15 1 100 force @a[predicate=custom:indimension,tag=!hideParticles,team=!Lobby,distance=80..,predicate=custom:belowroof]
execute as @a[predicate=custom:indimension,tag=CarryFlag,team=Yellow] at @s anchored eyes if score $dust CmdData matches 1 run particle minecraft:dust 1 1 0 1 ~ ~28 ~ 0.15 10 0.15 1 100 force @a[predicate=custom:indimension,tag=!hideParticles,team=!Lobby,distance=80..,predicate=custom:belowroof]


#Fancy spinny particles
execute as @e[predicate=custom:indimension,type=marker,tag=FlagParticleBlue] at @s unless entity @e[predicate=custom:indimension,type=player,tag=CarryFlag,team=Blue,distance=..4,limit=1] run kill @s
execute as @e[predicate=custom:indimension,type=marker,tag=FlagParticleYellow] at @s unless entity @e[predicate=custom:indimension,type=player,tag=CarryFlag,team=Yellow,distance=..4,limit=1] run kill @s

execute as @a[predicate=custom:indimension,tag=CarryFlag,team=Blue] at @s unless entity @e[predicate=custom:indimension,type=marker,tag=FlagParticleBlue,distance=..4,limit=1] run summon marker ~ ~ ~ {Tags:["FlagParticle","FlagParticleBlue"]}
execute as @a[predicate=custom:indimension,tag=CarryFlag,team=Yellow] at @s unless entity @e[predicate=custom:indimension,type=marker,tag=FlagParticleYellow,distance=..4,limit=1] run summon marker ~ ~ ~ {Tags:["FlagParticle","FlagParticleYellow"]}

execute as @a[predicate=custom:indimension,tag=CarryFlag,team=Blue] anchored eyes at @s run tp @e[predicate=custom:indimension,type=marker,tag=FlagParticleBlue,limit=1,sort=nearest] ~ ~1 ~
execute as @a[predicate=custom:indimension,tag=CarryFlag,team=Yellow] anchored eyes at @s run tp @e[predicate=custom:indimension,type=marker,tag=FlagParticleYellow,limit=1,sort=nearest] ~ ~1 ~

execute as @e[predicate=custom:indimension,type=marker,tag=FlagParticle,nbt={Rotation:[120.0f,90.0f]}] run tag @s add FPMoveOpposite
execute as @e[predicate=custom:indimension,type=marker,tag=FlagParticle,nbt={Rotation:[120.0f,-90.0f]}] run tag @s remove FPMoveOpposite

execute as @e[predicate=custom:indimension,type=marker,tag=FlagParticle,tag=!FPMoveOpposite] at @s run tp @s ~ ~ ~ ~15 ~3
execute as @e[predicate=custom:indimension,type=marker,tag=FlagParticle,tag=FPMoveOpposite] at @s run tp @s ~ ~ ~ ~-15 ~-3

scoreboard players add @e[predicate=custom:indimension,type=marker,tag=FlagParticle] CmdData 1
scoreboard players reset @e[predicate=custom:indimension,type=marker,tag=FlagParticle,scores={CmdData=150..}] CmdData

execute as @e[predicate=custom:indimension,type=marker,tag=FlagParticleBlue,scores={CmdData=..75}] at @s if score $dust CmdData matches 1 run particle minecraft:dust 0 0 1 1.5 ^ ^ ^1.2 0 0 0 0 1 force @a[predicate=custom:indimension,tag=!hideParticles,team=!Lobby,distance=2..,predicate=custom:belowroof]
execute as @e[predicate=custom:indimension,type=marker,tag=FlagParticleYellow,scores={CmdData=..75}] at @s if score $dust CmdData matches 1 run particle minecraft:dust 1 1 0 1.5 ^ ^ ^1.2 0 0 0 0 1 force @a[predicate=custom:indimension,tag=!hideParticles,team=!Lobby,distance=2..,predicate=custom:belowroof]
execute as @e[predicate=custom:indimension,type=marker,tag=FlagParticleBlue,scores={CmdData=..75}] at @s if score $dust CmdData matches 1 run particle minecraft:dust 0 0 1 1.5 ^ ^ ^-1.2 0 0 0 0 1 force @a[predicate=custom:indimension,tag=!hideParticles,team=!Lobby,distance=2..,predicate=custom:belowroof]
execute as @e[predicate=custom:indimension,type=marker,tag=FlagParticleYellow,scores={CmdData=..75}] at @s if score $dust CmdData matches 1 run particle minecraft:dust 1 1 0 1.5 ^ ^ ^-1.2 0 0 0 0 1 force @a[predicate=custom:indimension,tag=!hideParticles,team=!Lobby,distance=2..,predicate=custom:belowroof]

execute as @e[predicate=custom:indimension,type=marker,tag=FlagParticleBlue,scores={CmdData=75..150}] at @s if score $dust CmdData matches 1 run particle minecraft:dust 0 1 2 1.5 ^ ^ ^1.2 0 0 0 0 1 force @a[predicate=custom:indimension,tag=!hideParticles,team=!Lobby,distance=2..,predicate=custom:belowroof]
execute as @e[predicate=custom:indimension,type=marker,tag=FlagParticleYellow,scores={CmdData=75..150}] at @s if score $dust CmdData matches 1 run particle minecraft:dust 1 2 0 1.5 ^ ^ ^1.2 0 0 0 0 1 force @a[predicate=custom:indimension,tag=!hideParticles,team=!Lobby,distance=2..,predicate=custom:belowroof]
execute as @e[predicate=custom:indimension,type=marker,tag=FlagParticleBlue,scores={CmdData=75..150}] at @s if score $dust CmdData matches 1 run particle minecraft:dust 0 1 2 1.5 ^ ^ ^-1.2 0 0 0 0 1 force @a[predicate=custom:indimension,tag=!hideParticles,team=!Lobby,distance=2..,predicate=custom:belowroof]
execute as @e[predicate=custom:indimension,type=marker,tag=FlagParticleYellow,scores={CmdData=75..150}] at @s if score $dust CmdData matches 1 run particle minecraft:dust 1 2 0 1.5 ^ ^ ^-1.2 0 0 0 0 1 force @a[predicate=custom:indimension,tag=!hideParticles,team=!Lobby,distance=2..,predicate=custom:belowroof]