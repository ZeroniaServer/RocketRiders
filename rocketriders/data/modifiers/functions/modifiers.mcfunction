####################################
## MODIFIERS: Any commands needed ##
## for Game Modifiers to function ##
####################################

##Instamine
execute if entity @s[tag=Instamine] as @a unless entity @s[team=!Yellow,team=!Blue] run effect give @s haste 1000000 255 true
execute if entity @s[tag=Instamine] run effect clear @a[team=!Yellow,team=!Blue] haste

##Explosive
execute if entity @s[tag=Explosive,tag=!ClutterCollector] as @e[type=tnt,nbt={Fuse:1s}] at @s run summon creeper ~ ~ ~ {NoGravity:1b,CustomName:'{"text":"TNT"}',ExplosionRadius:5,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s,Tags:["ExplosiveTNT"]}
execute if entity @s[tag=Explosive,tag=!ClutterCollector] as @e[type=tnt,nbt={Fuse:1s},tag=UtilKilled] at @s run data modify entity @e[type=creeper,tag=ExplosiveTNT,limit=1,sort=nearest,distance=..1] CustomName set from entity @s CustomName

execute if entity @s[tag=Explosive,tag=!ClutterCollector] run kill @e[type=tnt,nbt={Fuse:1s}]
execute if entity @s[tag=Explosive,tag=!ClutterCollector] as @e[type=fireball,tag=NormalFireball] run data merge entity @s {ExplosionPower:3}

##Sonar
execute unless entity @s[tag=Sonar] as @a unless entity @s[team=!Yellow,team=!Blue,team=!Spectator] run effect give @s night_vision 1000000 100 true
execute if entity @s[tag=Sonar] as @a unless entity @s[team=!Yellow,team=!Blue,team=!Spectator] run effect clear @s night_vision
execute if entity @s[tag=Sonar] as @a unless entity @s[team=!Yellow,team=!Blue] run effect give @s glowing 1000000 1 true
execute if entity @s[tag=Sonar] as @e[type=arrow] run data merge entity @s {Glowing:1b}
execute if entity @s[tag=Sonar] as @e[type=snowball] run data merge entity @s {Glowing:1b}
execute if entity @s[tag=Sonar] as @e[type=egg] run data merge entity @s {Glowing:1b}
execute if entity @s[tag=Sonar] as @e[type=firework_rocket] run data merge entity @s {Glowing:1b}
execute if entity @s[tag=Sonar] as @e[type=fireball] run data merge entity @s {Glowing:1b}
execute if entity @s[tag=Sonar] as @e[type=dragon_fireball] run data merge entity @s {Glowing:1b}
execute if entity @s[tag=Sonar] as @e[type=potion] run data merge entity @s {Glowing:1b}
execute if entity @s[tag=Sonar] as @e[type=tnt] run data merge entity @s {Glowing:1b}
execute if entity @s[tag=Sonar] as @e[type=tnt_minecart] run data merge entity @s {Glowing:1b}
execute if entity @s[tag=Sonar] as @e[type=item] run data merge entity @s {Glowing:1b}
execute if entity @s[tag=Sonar] as @e[type=armor_stand,tag=VortexItemBlue] run data merge entity @s {Glowing:1b}
execute if entity @s[tag=Sonar] as @e[type=armor_stand,tag=VortexItemYellow] run data merge entity @s {Glowing:1b}
execute if entity @s[tag=Sonar] as @e[type=armor_stand,tag=VortexItemFeathered] run data merge entity @s {Glowing:1b}
execute if entity @s[tag=Sonar] as @e[type=armor_stand,tag=Bot] run data merge entity @s {Glowing:1b}

##Rocket Residers (anti-crossing behavior)
execute if entity @s[tag=Residers] as @a[team=Blue,predicate=custom:residers] run tag @s add crosser
execute if entity @s[tag=Residers] as @a[team=Yellow,predicate=custom:residers] run tag @s add crosser
#Hackfix: void works for crossers too
execute as @a[tag=crosser] run function game:void
tag @a remove crosser

##Spam Click
execute if entity @s[tag=SpamClick] as @a unless entity @s[team=!Blue,team=!Yellow] run attribute @s minecraft:generic.attack_speed base set 1000
execute if entity @s[tag=SpamClick] as @a[team=Lobby] run attribute @s minecraft:generic.attack_speed base set 4
execute if entity @s[tag=!SpamClick] as @a unless entity @s[team=!Blue,team=!Yellow] run attribute @s minecraft:generic.attack_speed base set 4

##Ninja Jump
execute if entity @s[tag=NinjaJump] as @a unless entity @s[team=!Blue,team=!Yellow] run effect give @s speed 1000000 2 true
execute if entity @s[tag=NinjaJump] as @a unless entity @s[team=!Blue,team=!Yellow] run effect give @s jump_boost 1000000 2 true

##Hardcore
execute if entity @s[tag=Hardcore] as @a unless entity @s[team=!Blue,team=!Yellow] run attribute @s minecraft:generic.max_health base set 6.0
execute if entity @s[tag=Hardcore] as @a[team=Lobby] run attribute @s minecraft:generic.max_health base set 20.0
execute if entity @s[tag=!Hardcore] as @a unless entity @s[team=!Blue,team=!Yellow] run attribute @s minecraft:generic.max_health base set 20.0

#Clutter Collector
execute if entity @s[tag=ClutterCollector,tag=Explosive] as @e[type=tnt,nbt={Fuse:1s},z=-50,dz=100,x=-160,dx=320,y=-20,dy=200] at @s run summon creeper ~ ~ ~ {NoGravity:1b,CustomName:'{"text":"TNT"}',ExplosionRadius:-5,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s,Tags:["ExplosiveTNT"]}
execute if entity @s[tag=ClutterCollector,tag=Explosive] as @e[type=tnt,nbt={Fuse:1s}] unless entity @s[z=-50,dz=100,x=-160,dx=320,y=-20,dy=200] at @s run summon creeper ~ ~ ~ {NoGravity:1b,CustomName:'{"text":"TNT"}',ExplosionRadius:5,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s,Tags:["ExplosiveTNT"]}
execute if entity @s[tag=ClutterCollector,tag=!Explosive] as @e[type=tnt,nbt={Fuse:1s},z=-50,dz=100,x=-160,dx=320,y=-20,dy=200] at @s run summon creeper ~ ~ ~ {NoGravity:1b,CustomName:'{"text":"TNT"}',ExplosionRadius:-3,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s,Tags:["ExplosiveTNT"]}
execute if entity @s[tag=ClutterCollector] as @e[type=tnt,nbt={Fuse:1s},tag=UtilKilled] at @s run data modify entity @e[type=creeper,tag=ExplosiveTNT,limit=1,sort=nearest,distance=..1] CustomName set from entity @s CustomName
execute if entity @s[tag=ClutterCollector,tag=Explosive] run kill @e[type=tnt,nbt={Fuse:1s}]
execute if entity @s[tag=ClutterCollector,tag=!Explosive] run kill @e[type=tnt,nbt={Fuse:1s},z=-50,dz=100,x=-160,dx=320,y=-20,dy=200]
execute if entity @s[tag=ClutterCollector,tag=!Explosive] as @e[type=fireball,tag=NormalFireball] run data merge entity @s {ExplosionPower:-1}
execute if entity @s[tag=ClutterCollector,tag=Explosive] as @e[type=fireball,tag=NormalFireball] run data merge entity @s {ExplosionPower:-3}