####################################
## MODIFIERS: Any commands needed ##
## for Game Modifiers to function ##
####################################

##Instamine
execute if entity @s[tag=Instamine] as @a[x=0] unless entity @s[team=!Yellow,team=!Blue] run attribute @s minecraft:player.block_break_speed modifier add rocketriders:instamine 10000000000000000000000000000000000000 add_multiplied_base
execute if entity @s[tag=Instamine] as @a[x=0,team=!Yellow,team=!Blue] run attribute @s minecraft:player.block_break_speed modifier remove rocketriders:instamine

##Explosive
execute if entity @s[tag=Explosive,tag=!ClutterCollector] as @e[x=0,type=tnt,nbt={fuse:2s}] at @s run summon creeper ~ ~ ~ {NoGravity:1b,CustomName:'{"text":"TNT"}',ExplosionRadius:5,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s,Tags:["ExplosiveTNT"],Invulnerable:1b}
execute if entity @s[tag=Explosive,tag=!ClutterCollector] as @e[x=0,type=tnt,nbt={fuse:2s},tag=UtilKilled] at @s run data modify entity @e[type=creeper,tag=ExplosiveTNT,limit=1,sort=nearest,distance=..1] CustomName set from entity @s CustomName

execute if entity @s[tag=Explosive,tag=!ClutterCollector] run kill @e[x=0,type=tnt,nbt={fuse:2s}]
execute if entity @s[tag=Explosive,tag=!ClutterCollector] as @e[x=0,type=fireball,tag=NormalFireball] run data merge entity @s {ExplosionPower:3}

##Sonar
execute unless entity @s[tag=Sonar] as @a[x=0] unless entity @s[team=!Yellow,team=!Blue,team=!Spectator] run effect give @s night_vision infinite 100 true
execute if entity @s[tag=Sonar] as @a[x=0] unless entity @s[team=!Yellow,team=!Blue,team=!Spectator] run effect clear @s night_vision
execute if entity @s[tag=Sonar] as @a[x=0] unless entity @s[team=!Yellow,team=!Blue] run effect give @s glowing infinite 1 true
execute if entity @s[tag=Sonar] as @e[x=0,type=arrow] run data merge entity @s {Glowing:1b}
execute if entity @s[tag=Sonar] as @e[x=0,type=snowball] run data merge entity @s {Glowing:1b}
execute if entity @s[tag=Sonar] as @e[x=0,type=egg] run data merge entity @s {Glowing:1b}
execute if entity @s[tag=Sonar] as @e[x=0,type=firework_rocket] run data merge entity @s {Glowing:1b}
execute if entity @s[tag=Sonar] as @e[x=0,type=fireball] run data merge entity @s {Glowing:1b}
execute if entity @s[tag=Sonar] as @e[x=0,type=dragon_fireball] run data merge entity @s {Glowing:1b}
execute if entity @s[tag=Sonar] as @e[x=0,type=potion] run data merge entity @s {Glowing:1b}
execute if entity @s[tag=Sonar] as @e[x=0,type=tnt] run data merge entity @s {Glowing:1b}
execute if entity @s[tag=Sonar] as @e[x=0,type=tnt_minecart] run data merge entity @s {Glowing:1b}
execute if entity @s[tag=Sonar] as @e[x=0,type=item] run data merge entity @s {Glowing:1b}
execute if entity @s[tag=Sonar] as @e[x=0,type=armor_stand,tag=VortexItemBlue] run data merge entity @s {Glowing:1b}
execute if entity @s[tag=Sonar] as @e[x=0,type=armor_stand,tag=VortexItemYellow] run data merge entity @s {Glowing:1b}
execute if entity @s[tag=Sonar] as @e[x=0,type=armor_stand,tag=VortexItemFeathered] run data merge entity @s {Glowing:1b}
execute if entity @s[tag=Sonar] as @e[x=0,type=armor_stand,tag=Bot] run data merge entity @s {Glowing:1b}

##Rocket Residers (anti-crossing behavior)
execute if entity @s[tag=Residers,tag=!GameEnd] as @a[x=0,team=Blue,predicate=custom:residers] run tag @s add crosser
execute if entity @s[tag=Residers,tag=!GameEnd] as @a[x=0,team=Yellow,predicate=custom:residers] run tag @s add crosser
#Hackfix: void works for crossers too
execute as @a[x=0,tag=crosser] run function game:void
tag @a[x=0] remove crosser

##Spam Click
execute if entity @s[tag=SpamClick] as @a[x=0] unless entity @s[team=!Blue,team=!Yellow] run attribute @s minecraft:generic.attack_speed base set 1000
execute if entity @s[tag=SpamClick] as @a[x=0,team=Lobby] run attribute @s minecraft:generic.attack_speed base set 4
execute if entity @s[tag=!SpamClick] as @a[x=0] unless entity @s[team=!Blue,team=!Yellow] run attribute @s minecraft:generic.attack_speed base set 4

##Ninja Jump
execute if entity @s[tag=NinjaJump] as @a[x=0] unless entity @s[team=!Blue,team=!Yellow] run effect give @s speed infinite 2 true
execute if entity @s[tag=NinjaJump] as @a[x=0] unless entity @s[team=!Blue,team=!Yellow] run effect give @s jump_boost infinite 2 true

##Hardcore
execute if entity @s[tag=Hardcore] as @a[x=0] unless entity @s[team=!Blue,team=!Yellow] if entity @s[scores={nnhealth_max=20}] run function modifiers:hardcoreset
execute if entity @s[tag=!Hardcore] as @a[x=0] unless entity @s[team=!Blue,team=!Yellow] if entity @s[scores={nnhealth_max=6}] run function modifiers:hardcorereset

#Clutter Collector
execute if entity @s[tag=ClutterCollector,tag=Explosive,tag=!Hardcore] as @e[type=tnt,nbt={fuse:2s},z=-50,dz=100,x=-160,dx=320,y=-20,dy=200] at @s run summon creeper ~ ~ ~ {NoGravity:1b,CustomName:'{"text":"TNT"}',ExplosionRadius:0,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s,Tags:["ExplosiveTNT"],Invulnerable:1b}
execute if entity @s[tag=ClutterCollector,tag=Explosive,tag=!Hardcore] as @e[type=tnt,nbt={fuse:2s}] unless entity @s[z=-50,dz=100,x=-160,dx=320,y=-20,dy=200] at @s run summon creeper ~ ~ ~ {NoGravity:1b,CustomName:'{"text":"TNT"}',ExplosionRadius:5,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s,Tags:["ExplosiveTNT"],Invulnerable:1b}
execute if entity @s[tag=ClutterCollector,tag=!Explosive,tag=!Hardcore] as @e[type=tnt,nbt={fuse:2s},z=-50,dz=100,x=-160,dx=320,y=-20,dy=200] at @s run summon creeper ~ ~ ~ {NoGravity:1b,CustomName:'{"text":"TNT"}',ExplosionRadius:0,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s,Tags:["ExplosiveTNT"],Invulnerable:1b}
execute if entity @s[tag=ClutterCollector,tag=Explosive,tag=Hardcore] as @e[type=tnt,nbt={fuse:2s},z=-62,dz=124,x=-160,dx=320,y=-20,dy=200] at @s run summon creeper ~ ~ ~ {NoGravity:1b,CustomName:'{"text":"TNT"}',ExplosionRadius:0,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s,Tags:["ExplosiveTNT"],Invulnerable:1b}
execute if entity @s[tag=ClutterCollector,tag=Explosive,tag=Hardcore] as @e[type=tnt,nbt={fuse:2s}] unless entity @s[z=-62,dz=124,x=-160,dx=320,y=-20,dy=200] at @s run summon creeper ~ ~ ~ {NoGravity:1b,CustomName:'{"text":"TNT"}',ExplosionRadius:5,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s,Tags:["ExplosiveTNT"],Invulnerable:1b}
execute if entity @s[tag=ClutterCollector,tag=!Explosive,tag=Hardcore] as @e[type=tnt,nbt={fuse:2s},z=-62,dz=124,x=-160,dx=320,y=-20,dy=200] at @s run summon creeper ~ ~ ~ {NoGravity:1b,CustomName:'{"text":"TNT"}',ExplosionRadius:0,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s,Tags:["ExplosiveTNT"],Invulnerable:1b}
execute if entity @s[tag=ClutterCollector] as @e[x=0,type=tnt,nbt={fuse:2s},tag=UtilKilled] at @s run data modify entity @e[type=creeper,tag=ExplosiveTNT,limit=1,sort=nearest,distance=..1] CustomName set from entity @s CustomName
execute if entity @s[tag=ClutterCollector,tag=Explosive] run kill @e[x=0,type=tnt,nbt={fuse:2s}]
execute if entity @s[tag=ClutterCollector,tag=!Explosive,tag=!Hardcore] run kill @e[type=tnt,nbt={fuse:2s},z=-50,dz=100,x=-160,dx=320,y=-20,dy=200]
execute if entity @s[tag=ClutterCollector,tag=!Explosive,tag=Hardcore] run kill @e[type=tnt,nbt={fuse:2s},z=-61,dz=122,x=-160,dx=320,y=-20,dy=200]
execute if entity @s[tag=ClutterCollector,tag=!Explosive] as @e[x=0,type=fireball,tag=NormalFireball] run data merge entity @s {ExplosionPower:-1}
execute if entity @s[tag=ClutterCollector,tag=Explosive] as @e[x=0,type=fireball,tag=NormalFireball] run data merge entity @s {ExplosionPower:-3}