# Particles
execute if predicate custom:periodic_tick/3 unless entity @s[tag=vortex_decoy.is_staring] run particle minecraft:dragon_breath ~ ~-0.2 ~ 0.5 0.5 0 0 5 force @a[x=0,tag=!hideParticles,predicate=!custom:belowroof]
execute if predicate custom:periodic_tick/3 unless entity @s[tag=vortex_decoy.is_staring] run particle minecraft:scrape ~ ~-0.2 ~ 0.5 0.5 0 0 3 force @a[x=0,tag=!hideParticles,predicate=!custom:belowroof]
execute if predicate custom:periodic_tick/3 unless entity @s[tag=vortex_decoy.is_staring] run particle minecraft:dust{color:[0,1,1],scale:1} ~ ~-0.2 ~ 0.5 0.5 0 0 2 force @a[x=0,tag=!hideParticles,predicate=!custom:belowroof]

execute if predicate custom:periodic_tick/3 if entity @s[tag=vortex_decoy.is_staring] run particle minecraft:dragon_breath ^ ^ ^-0.75 0.5 0.5 0.5 0 5 force @a[x=0,tag=!hideParticles,predicate=!custom:belowroof]
execute if predicate custom:periodic_tick/3 if entity @s[tag=vortex_decoy.is_staring] run particle minecraft:scrape ^ ^ ^-0.75 0.5 0.5 0.5 0 3 force @a[x=0,tag=!hideParticles,predicate=!custom:belowroof]
execute if predicate custom:periodic_tick/3 if entity @s[tag=vortex_decoy.is_staring] run particle minecraft:dust{color:[0,0,1],scale:1} ^ ^ ^-0.75 0.5 0.5 0.5 0 2 force @a[x=0,tag=!hideParticles,predicate=!custom:belowroof]

# Spin
execute unless entity @s[tag=vortex_decoy.is_staring] if predicate custom:periodic_tick/5 run rotate @s ~60 0

## Movement (drift)
execute store success score $was_staring var if entity @s[tag=vortex_decoy.is_staring]
tag @s remove vortex_decoy.is_staring

execute if score $was_staring var matches 0 positioned ~ ~-1.6 ~ facing entity @p[distance=..4,team=Lobby,gamemode=!spectator] feet positioned ~ ~1.6 ~ run function entities:vortex_decoy/tick/drift
execute if score $was_staring var matches 1 positioned ~ ~-1.6 ~ facing entity @p[distance=..4.5,team=Lobby,gamemode=!spectator] feet positioned ~ ~1.6 ~ run function entities:vortex_decoy/tick/drift

execute if score $was_staring var matches 1 if entity @s[tag=!vortex_decoy.is_staring] run data merge entity @s {teleport_duration:10,item:{id:"minecraft:ender_pearl"},start_interpolation:0,interpolation_duration:10,transformation:{scale:[0.6,0.6,0.6],translation:[-0.03125,0.0125,0]}}
