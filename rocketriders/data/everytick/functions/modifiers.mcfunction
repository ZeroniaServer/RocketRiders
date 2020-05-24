#Instamine
execute if entity @s[tag=Instamine] as @a unless entity @s[team=!Yellow,team=!Blue] run effect give @s haste 1000000 255 true
execute if entity @s[tag=Instamine] run effect clear @a[team=!Yellow,team=!Blue] haste

#Explosive
execute if entity @s[tag=Explosive] as @e[type=tnt,nbt={Fuse:0s}] at @s run summon creeper ~ ~ ~ {NoGravity:1b,CustomName:"{\"text\":\"TNT\"}",ExplosionRadius:10,Fuse:0,EntityTag:{Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2000,ShowParticles:0b}]}}
execute if entity @s[tag=Explosive] run kill @e[type=tnt,nbt={Fuse:0s}]
execute if entity @s[tag=Explosive] as @e[type=fireball,tag=NormalFireball] run data merge entity @s {ExplosionPower:3}