execute on origin run loot give @s loot items:util/canopy
kill @s
particle minecraft:item{item:{id:"minecraft:ender_pearl"}} ~ ~ ~ 0 0 0 0.05 10 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
particle minecraft:dust_color_transition{from_color:0xFF00FF,to_color:0x00FF00,scale:1} ~ ~ ~ 0.1 0.2 0.1 0 3 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
playsound minecraft:entity.splash_potion.break master @a[x=0] ~ ~ ~ 1 2
