#Instamine
execute if entity @s[tag=Instamine] as @a unless entity @s[team=!Yellow,team=!Blue] run effect give @s haste 1000000 255 true
execute if entity @s[tag=Instamine] run effect clear @a[team=!Yellow,team=!Blue] haste

#Explosive
execute if entity @s[tag=Explosive] as @e[type=tnt,nbt={Fuse:0s}] at @s run summon creeper ~ ~ ~ {NoGravity:1b,CustomName:"{\"text\":\"TNT\"}",ExplosionRadius:10,Fuse:0,EntityTag:{Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2000,ShowParticles:0b}]}}
execute if entity @s[tag=Explosive] run kill @e[type=tnt,nbt={Fuse:0s}]
execute if entity @s[tag=Explosive] as @e[type=fireball,tag=NormalFireball] run data merge entity @s {ExplosionPower:3}

#Sonar
execute if entity @s[tag=Sonar] as @a unless entity @s[team=!Yellow,team=!Blue] run effect give @s blindness 1000000 255 true
execute if entity @s[tag=Sonar] as @a unless entity @s[team=!Yellow,team=!Blue] run effect give @s glowing 1000000 1 true
execute if entity @s[tag=Sonar] as @e[type=arrow] run data merge entity @s {Glowing:1b}
execute if entity @s[tag=Sonar] as @e[type=snowball] run data merge entity @s {Glowing:1b}
execute if entity @s[tag=Sonar] as @e[type=egg] run data merge entity @s {Glowing:1b}
execute if entity @s[tag=Sonar] as @e[type=firework_rocket] run data merge entity @s {Glowing:1b}
execute if entity @s[tag=Sonar] as @e[type=fireball] run data merge entity @s {Glowing:1b}
execute if entity @s[tag=Sonar] as @e[type=dragon_fireball] run data merge entity @s {Glowing:1b}
execute if entity @s[tag=Sonar] as @e[type=potion] run data merge entity @s {Glowing:1b}
execute if entity @s[tag=Sonar] as @e[type=ender_pearl] run data merge entity @s {Glowing:1b}
execute if entity @s[tag=Sonar] as @e[type=tnt] run data merge entity @s {Glowing:1b}
execute if entity @s[tag=Sonar] as @e[type=item] run data merge entity @s {Glowing:1b}
execute if entity @s[tag=Sonar] as @e[tag=VortexItemBlue] run data merge entity @s {Glowing:1b}
execute if entity @s[tag=Sonar] as @e[tag=VortexItemYellow] run data merge entity @s {Glowing:1b}
execute if entity @s[tag=Sonar] as @e[tag=Bot] run data merge entity @s {Glowing:1b}

#Rocket Residers (anti-crossing behavior)
execute if entity @s[tag=Residers] as @a[team=Blue] at @s if entity @s[z=-36,dz=220] run tag @s add crosser
execute if entity @s[tag=Residers] as @a[team=Yellow] at @s if entity @s[z=-184,dz=220] run tag @s add crosser
#hotfix for canopy teleports
execute as @a[team=Yellow,tag=crosser] at @s if score @s playerUUIDL = @e[tag=YellowPlatform,scores={PlatTime=1..40},limit=1,sort=nearest] pearlOwnerUUIDL run scoreboard players reset @e[tag=YellowPlatform,scores={PlatTime=1..40},limit=1,sort=nearest] pearlOwnerUUIDL
execute as @a[team=Blue,tag=crosser] at @s if score @s playerUUIDL = @e[tag=BluePlatform,scores={PlatTime=1..40},limit=1,sort=nearest] pearlOwnerUUIDL run scoreboard players reset @e[tag=BluePlatform,scores={PlatTime=1..40},limit=1,sort=nearest] pearlOwnerUUIDL
#hackfix: works for crossers too
execute as @a[tag=crosser] run function game:void
tag @a remove crosser
