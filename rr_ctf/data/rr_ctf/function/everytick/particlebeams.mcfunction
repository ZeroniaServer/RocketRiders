# Particle beam trail for flag carriers. Everyone but the carrier can see it (and no one in lobby). Gradually becomes thicker the further away you are from it.
execute as @a[x=0,tag=CarryFlag] run function rr_ctf:everytick/particle_beam/start

# Fancy spinny particles
execute as @e[x=0,type=marker,tag=FlagParticleBlue] at @s unless entity @e[type=player,tag=CarryFlag,predicate=custom:team/blue,distance=..4,limit=1] run kill @s
execute as @e[x=0,type=marker,tag=FlagParticleYellow] at @s unless entity @e[type=player,tag=CarryFlag,predicate=custom:team/yellow,distance=..4,limit=1] run kill @s

execute as @a[x=0,tag=CarryFlag,predicate=custom:team/blue] at @s unless entity @e[type=marker,tag=FlagParticleBlue,distance=..4,limit=1] run summon marker ~ ~ ~ {Tags:["FlagParticle","FlagParticleBlue"]}
execute as @a[x=0,tag=CarryFlag,predicate=custom:team/yellow] at @s unless entity @e[type=marker,tag=FlagParticleYellow,distance=..4,limit=1] run summon marker ~ ~ ~ {Tags:["FlagParticle","FlagParticleYellow"]}

execute as @a[x=0,tag=CarryFlag,predicate=custom:team/blue] anchored eyes at @s run tp @e[x=0,type=marker,tag=FlagParticleBlue,limit=1,sort=nearest] ~ ~1 ~
execute as @a[x=0,tag=CarryFlag,predicate=custom:team/yellow] anchored eyes at @s run tp @e[x=0,type=marker,tag=FlagParticleYellow,limit=1,sort=nearest] ~ ~1 ~

execute as @e[x=0,type=marker,tag=FlagParticle,y_rotation=120,x_rotation=90] run tag @s add FPMoveOpposite
execute as @e[x=0,type=marker,tag=FlagParticle,y_rotation=120,x_rotation=-90] run tag @s remove FPMoveOpposite

execute as @e[x=0,type=marker,tag=FlagParticle,tag=!FPMoveOpposite] at @s run tp @s ~ ~ ~ ~15 ~3
execute as @e[x=0,type=marker,tag=FlagParticle,tag=FPMoveOpposite] at @s run tp @s ~ ~ ~ ~-15 ~-3

scoreboard players add @e[x=0,type=marker,tag=FlagParticle] CmdData 1
scoreboard players set @e[x=0,type=marker,tag=FlagParticle,scores={CmdData=150..}] CmdData 0

execute if predicate custom:periodic_tick/3 if predicate game:blue_team_skin/blue as @e[x=0,type=marker,tag=FlagParticleBlue,scores={CmdData=..74}] at @s run particle minecraft:dust{color:[0,0,1],scale:1.5} ^ ^ ^1.2 0 0 0 0 1 force @a[tag=!hideParticles,predicate=!custom:team/lobby,distance=2..,predicate=custom:in_arena]
execute if predicate custom:periodic_tick/3 if predicate game:blue_team_skin/blue as @e[x=0,type=marker,tag=FlagParticleBlue,scores={CmdData=..74}] at @s run particle minecraft:dust{color:[0,0,1],scale:1.5} ^ ^ ^-1.2 0 0 0 0 1 force @a[tag=!hideParticles,predicate=!custom:team/lobby,distance=2..,predicate=custom:in_arena]
execute if predicate custom:periodic_tick/3 if predicate game:blue_team_skin/any_red_skin as @e[x=0,type=marker,tag=FlagParticleBlue,scores={CmdData=..74}] at @s run particle minecraft:dust{color:[1,0,0],scale:1.5} ^ ^ ^1.2 0 0 0 0 1 force @a[tag=!hideParticles,predicate=!custom:team/lobby,distance=2..,predicate=custom:in_arena]
execute if predicate custom:periodic_tick/3 if predicate game:blue_team_skin/any_red_skin as @e[x=0,type=marker,tag=FlagParticleBlue,scores={CmdData=..74}] at @s run particle minecraft:dust{color:[1,0,0],scale:1.5} ^ ^ ^-1.2 0 0 0 0 1 force @a[tag=!hideParticles,predicate=!custom:team/lobby,distance=2..,predicate=custom:in_arena]
execute if predicate custom:periodic_tick/3 if predicate game:yellow_team_skin/yellow as @e[x=0,type=marker,tag=FlagParticleYellow,scores={CmdData=..74}] at @s run particle minecraft:dust{color:[1,1,0],scale:1.5} ^ ^ ^1.2 0 0 0 0 1 force @a[tag=!hideParticles,predicate=!custom:team/lobby,distance=2..,predicate=custom:in_arena]
execute if predicate custom:periodic_tick/3 if predicate game:yellow_team_skin/yellow as @e[x=0,type=marker,tag=FlagParticleYellow,scores={CmdData=..74}] at @s run particle minecraft:dust{color:[1,1,0],scale:1.5} ^ ^ ^-1.2 0 0 0 0 1 force @a[tag=!hideParticles,predicate=!custom:team/lobby,distance=2..,predicate=custom:in_arena]
execute if predicate custom:periodic_tick/3 if predicate game:yellow_team_skin/green as @e[x=0,type=marker,tag=FlagParticleYellow,scores={CmdData=..74}] at @s run particle minecraft:dust{color:[0,1,0],scale:1.5} ^ ^ ^1.2 0 0 0 0 1 force @a[tag=!hideParticles,predicate=!custom:team/lobby,distance=2..,predicate=custom:in_arena]
execute if predicate custom:periodic_tick/3 if predicate game:yellow_team_skin/green as @e[x=0,type=marker,tag=FlagParticleYellow,scores={CmdData=..74}] at @s run particle minecraft:dust{color:[0,1,0],scale:1.5} ^ ^ ^-1.2 0 0 0 0 1 force @a[tag=!hideParticles,predicate=!custom:team/lobby,distance=2..,predicate=custom:in_arena]

execute if predicate custom:periodic_tick/3 if predicate game:blue_team_skin/blue as @e[x=0,type=marker,tag=FlagParticleBlue,scores={CmdData=75..}] at @s run particle minecraft:dust{color:[0,1,1],scale:1.5} ^ ^ ^1.2 0 0 0 0 1 force @a[tag=!hideParticles,predicate=!custom:team/lobby,distance=2..,predicate=custom:in_arena]
execute if predicate custom:periodic_tick/3 if predicate game:blue_team_skin/blue as @e[x=0,type=marker,tag=FlagParticleBlue,scores={CmdData=75..}] at @s run particle minecraft:dust{color:[0,1,1],scale:1.5} ^ ^ ^-1.2 0 0 0 0 1 force @a[tag=!hideParticles,predicate=!custom:team/lobby,distance=2..,predicate=custom:in_arena]
execute if predicate custom:periodic_tick/3 if predicate game:blue_team_skin/any_red_skin as @e[x=0,type=marker,tag=FlagParticleBlue,scores={CmdData=75..}] at @s run particle minecraft:dust{color:[1,0.5,0.5],scale:1.5} ^ ^ ^1.2 0 0 0 0 1 force @a[tag=!hideParticles,predicate=!custom:team/lobby,distance=2..,predicate=custom:in_arena]
execute if predicate custom:periodic_tick/3 if predicate game:blue_team_skin/any_red_skin as @e[x=0,type=marker,tag=FlagParticleBlue,scores={CmdData=75..}] at @s run particle minecraft:dust{color:[1,0.5,0.5],scale:1.5} ^ ^ ^-1.2 0 0 0 0 1 force @a[tag=!hideParticles,predicate=!custom:team/lobby,distance=2..,predicate=custom:in_arena]
execute if predicate custom:periodic_tick/3 if predicate game:yellow_team_skin/yellow as @e[x=0,type=marker,tag=FlagParticleYellow,scores={CmdData=75..}] at @s run particle minecraft:dust{color:[1,0.75,0],scale:1.5} ^ ^ ^1.2 0 0 0 0 1 force @a[tag=!hideParticles,predicate=!custom:team/lobby,distance=2..,predicate=custom:in_arena]
execute if predicate custom:periodic_tick/3 if predicate game:yellow_team_skin/yellow as @e[x=0,type=marker,tag=FlagParticleYellow,scores={CmdData=75..}] at @s run particle minecraft:dust{color:[1,0.75,0],scale:1.5} ^ ^ ^-1.2 0 0 0 0 1 force @a[tag=!hideParticles,predicate=!custom:team/lobby,distance=2..,predicate=custom:in_arena]
execute if predicate custom:periodic_tick/3 if predicate game:yellow_team_skin/green as @e[x=0,type=marker,tag=FlagParticleYellow,scores={CmdData=75..}] at @s run particle minecraft:dust{color:[0,0.75,0],scale:1.5} ^ ^ ^1.2 0 0 0 0 1 force @a[tag=!hideParticles,predicate=!custom:team/lobby,distance=2..,predicate=custom:in_arena]
execute if predicate custom:periodic_tick/3 if predicate game:yellow_team_skin/green as @e[x=0,type=marker,tag=FlagParticleYellow,scores={CmdData=75..}] at @s run particle minecraft:dust{color:[0,0.75,0],scale:1.5} ^ ^ ^-1.2 0 0 0 0 1 force @a[tag=!hideParticles,predicate=!custom:team/lobby,distance=2..,predicate=custom:in_arena]
