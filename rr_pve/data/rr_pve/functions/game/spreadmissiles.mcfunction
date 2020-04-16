#ANT
execute as @e[tag=PVEantspawn] at @s run spreadplayers ~ ~ 26 26 false @s
execute as @e[tag=PVEantspawn] at @s run tp @s ~ ~-162 ~-20
execute as @e[tag=PVEantspawn] at @s run summon bat ~ ~ ~ {Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,Tags:["YellowAnt","yellowmissile","missile"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2000,ShowParticles:0b}]}
kill @e[tag=PVEantspawn]

#Elder Guardian
execute as @e[tag=PVEeguardspawn] at @s run spreadplayers ~ ~ 26 26 false @s
execute as @e[tag=PVEeguardspawn] at @s run tp @s ~ ~-162 ~-20
execute as @e[tag=PVEeguardspawn] at @s run summon elder_guardian ~ ~ ~ {Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,Tags:["YellowGuard","yellowmissile","missile"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2000,ShowParticles:0b}]}
kill @e[tag=PVEeguardspawn]

#Warhead
execute as @e[tag=PVEwarspawn] at @s run spreadplayers ~ ~ 26 26 false @s
execute as @e[tag=PVEwarspawn] at @s run tp @s ~ ~-162 ~-20
execute as @e[tag=PVEwarspawn] at @s run summon silverfish ~ ~ ~ {Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,Tags:["YellowWar","yellowmissile","missile"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2000,ShowParticles:0b}]}
kill @e[tag=PVEwarspawn]

#TomaTwo
execute as @e[tag=PVEtomaspawn] at @s run spreadplayers ~ ~ 26 26 false @s
execute as @e[tag=PVEtomaspawn] at @s run tp @s ~ ~-162 ~-20
execute as @e[tag=PVEtomaspawn] at @s run summon silverfish ~ ~ ~ {Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,Tags:["YellowToma","yellowmissile","missile"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2000,ShowParticles:0b}]}
kill @e[tag=PVEtomaspawn]

#Blade
execute as @e[tag=PVEbladespawn] at @s run spreadplayers ~ ~ 26 26 false @s
execute as @e[tag=PVEbladespawn] at @s run tp @s ~ ~-162 ~-20
execute as @e[tag=PVEbladespawn] at @s run summon husk ~ ~ ~ {Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,Tags:["YellowBlade","yellowmissile","missile"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2000,ShowParticles:0b}]}
kill @e[tag=PVEbladespawn]