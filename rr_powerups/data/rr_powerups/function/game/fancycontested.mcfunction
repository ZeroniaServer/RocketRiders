execute if entity @s[scores={captureBlue=99}] at @s run playsound minecraft:block.beacon.deactivate master @a[x=0] ~ ~ ~ 1 1.2
execute if entity @s[scores={captureYellow=99}] at @s run playsound minecraft:block.beacon.deactivate master @a[x=0] ~ ~ ~ 1 1.2

execute if score $dust CmdData matches 1 run particle minecraft:dust{color:[1,0,0],scale:2} 12 55 -6 0 0.6 0 0 2 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score $dust CmdData matches 1 run particle minecraft:dust{color:[1,0,0],scale:2} 18 55 0 0 0.6 0 0 2 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score $dust CmdData matches 1 run particle minecraft:dust{color:[1,0,0],scale:2} 12 55 6 0 0.6 0 0 2 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score $dust CmdData matches 1 run particle minecraft:dust{color:[1,0,0],scale:2} 6 55 0 0 0.6 0 0 2 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]

execute if score $dust CmdData matches 1 run particle minecraft:dust{color:[0.667,0,0],scale:1} 11 54 6 0 0 0 0.1 2 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score $dust CmdData matches 1 run particle minecraft:dust{color:[0.667,0,0],scale:1} 13 54 6 0 0 0 0.1 2 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score $dust CmdData matches 1 run particle minecraft:dust{color:[0.667,0,0],scale:1} 18 54 1 0 0 0 0.1 2 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score $dust CmdData matches 1 run particle minecraft:dust{color:[0.667,0,0],scale:1} 18 54 -1 0 0 0 0.1 2 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score $dust CmdData matches 1 run particle minecraft:dust{color:[0.667,0,0],scale:1} 13 54 -6 0 0 0 0.1 2 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score $dust CmdData matches 1 run particle minecraft:dust{color:[0.667,0,0],scale:1} 11 54 -6 0 0 0 0.1 2 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score $dust CmdData matches 1 run particle minecraft:dust{color:[0.667,0,0],scale:1} 6 54 -1 0 0 0 0.1 2 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score $dust CmdData matches 1 run particle minecraft:dust{color:[0.667,0,0],scale:1} 6 54 1 0 0 0 0.1 2 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]

execute if score $dust CmdData matches 1 run particle minecraft:dust{color:[0.667,0,0],scale:1} 7 54 2 0 0 0 0.1 2 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score $dust CmdData matches 1 run particle minecraft:dust{color:[0.667,0,0],scale:1} 7 54 -2 0 0 0 0.1 2 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score $dust CmdData matches 1 run particle minecraft:dust{color:[0.667,0,0],scale:1} 10 54 -5 0 0 0 0.1 2 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score $dust CmdData matches 1 run particle minecraft:dust{color:[0.667,0,0],scale:1} 10 54 5 0 0 0 0.1 2 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score $dust CmdData matches 1 run particle minecraft:dust{color:[0.667,0,0],scale:1} 14 54 -5 0 0 0 0.1 2 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score $dust CmdData matches 1 run particle minecraft:dust{color:[0.667,0,0],scale:1} 17 54 -2 0 0 0 0.1 2 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score $dust CmdData matches 1 run particle minecraft:dust{color:[0.667,0,0],scale:1} 17 54 2 0 0 0 0.1 2 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score $dust CmdData matches 1 run particle minecraft:dust{color:[0.667,0,0],scale:1} 14 54 5 0 0 0 0.1 2 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]

execute if score $dust CmdData matches 1 run particle minecraft:dust{color:[0.667,0,0],scale:1} 9 54 5 0 0 0 0.1 2 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score $dust CmdData matches 1 run particle minecraft:dust{color:[0.667,0,0],scale:1} 7 54 3 0 0 0 0.1 2 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score $dust CmdData matches 1 run particle minecraft:dust{color:[0.667,0,0],scale:1} 7 54 -3 0 0 0 0.1 2 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score $dust CmdData matches 1 run particle minecraft:dust{color:[0.667,0,0],scale:1} 9 54 -5 0 0 0 0.1 2 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score $dust CmdData matches 1 run particle minecraft:dust{color:[0.667,0,0],scale:1} 15 54 -5 0 0 0 0.1 2 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score $dust CmdData matches 1 run particle minecraft:dust{color:[0.667,0,0],scale:1} 17 54 -3 0 0 0 0.1 2 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score $dust CmdData matches 1 run particle minecraft:dust{color:[0.667,0,0],scale:1} 17 54 3 0 0 0 0.1 2 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score $dust CmdData matches 1 run particle minecraft:dust{color:[0.667,0,0],scale:1} 15 54 5 0 0 0 0.1 2 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]

execute if score $dust CmdData matches 1 run particle minecraft:dust{color:[0.667,0,0],scale:1} 16 54 -4 0 0.6 0 0 2 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score $dust CmdData matches 1 run particle minecraft:dust{color:[0.667,0,0],scale:1} 16 54 4 0 0.6 0 0 2 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score $dust CmdData matches 1 run particle minecraft:dust{color:[0.667,0,0],scale:1} 8 54 4 0 0.6 0 0 2 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score $dust CmdData matches 1 run particle minecraft:dust{color:[0.667,0,0],scale:1} 8 54 -4 0 0.6 0 0 2 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]