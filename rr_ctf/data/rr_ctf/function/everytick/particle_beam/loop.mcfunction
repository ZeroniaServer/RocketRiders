# arguments: color

$particle minecraft:dust{color:$(color),scale:1} ~ ~ ~ 0.15 1.3 0.15 1 1 force @a[x=0,tag=particle_beam.very_close]
$execute if predicate custom:periodic_tick/2 run particle minecraft:dust{color:$(color),scale:1.6} ~ ~ ~ 0.3 1.3 0.3 1 1 force @a[x=0,tag=particle_beam.close]
$execute if predicate custom:periodic_tick/3 run particle minecraft:dust{color:$(color),scale:2.5} ~ ~ ~ 0.5 1 0.5 1 1 force @a[x=0,tag=particle_beam.medium]
$execute if predicate custom:periodic_tick/5 run particle minecraft:dust{color:$(color),scale:3.5} ~ ~ ~ 0.6 1 0.6 1 1 force @a[x=0,tag=particle_beam.far]
$execute if predicate custom:periodic_tick/5 run particle minecraft:dust{color:$(color),scale:4} ~ ~ ~ 0.8 1 0.8 1 1 force @a[x=0,tag=particle_beam.very_far]

$execute positioned ~ ~3 ~ if predicate custom:belowroof run function rr_ctf:everytick/particle_beam/loop {color:$(color)}
