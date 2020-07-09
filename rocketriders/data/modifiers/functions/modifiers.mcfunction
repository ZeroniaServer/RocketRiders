####################################
## MODIFIERS: Any commands needed ##
## for Game Modifiers to function ##
####################################

##Instamine
execute if entity @s[tag=Instamine] as @a unless entity @s[team=!Yellow,team=!Blue] run effect give @s haste 1000000 255 true
execute if entity @s[tag=Instamine] run effect clear @a[team=!Yellow,team=!Blue] haste

##Explosive
execute if entity @s[tag=Explosive] as @e[type=tnt,nbt={Fuse:1s}] at @s run summon creeper ~ ~ ~ {NoGravity:1b,CustomName:"{\"text\":\"TNT\"}",ExplosionRadius:5,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s}
execute if entity @s[tag=Explosive] run kill @e[type=tnt,nbt={Fuse:1s}]
execute if entity @s[tag=Explosive] as @e[type=fireball,tag=NormalFireball] run data merge entity @s {ExplosionPower:3}

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
execute if entity @s[tag=Sonar] as @e[tag=VortexItemBlue,type=armor_stand] run data merge entity @s {Glowing:1b}
execute if entity @s[tag=Sonar] as @e[tag=VortexItemYellow,type=armor_stand] run data merge entity @s {Glowing:1b}
execute if entity @s[tag=Sonar] as @e[tag=VortexItemFeathered,type=armor_stand] run data merge entity @s {Glowing:1b}
execute if entity @s[tag=Sonar] as @e[tag=Bot,type=armor_stand] run data merge entity @s {Glowing:1b}

##Rocket Residers (anti-crossing behavior)
execute if entity @s[tag=Residers] as @a[team=Blue] at @s if entity @s[z=-36,dz=220] run tag @s add crosser
execute if entity @s[tag=Residers] as @a[team=Yellow] at @s if entity @s[z=-184,dz=220] run tag @s add crosser
#Hotfix for Canopy teleports
execute as @a[team=Yellow,tag=crosser] at @s if score @s playerUUIDL = @e[tag=YellowPlatform,scores={PlatTime=1..40},limit=1,sort=nearest,type=area_effect_cloud] pearlOwnerUUIDL run scoreboard players reset @e[tag=YellowPlatform,scores={PlatTime=1..40},limit=1,sort=nearest] pearlOwnerUUIDL
execute as @a[team=Blue,tag=crosser] at @s if score @s playerUUIDL = @e[tag=BluePlatform,scores={PlatTime=1..40},limit=1,sort=nearest,type=area_effect_cloud] pearlOwnerUUIDL run scoreboard players reset @e[tag=BluePlatform,scores={PlatTime=1..40},limit=1,sort=nearest] pearlOwnerUUIDL
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
execute if entity @s[tag=Hardcore] as @a unless entity @s[team=!Blue,team=!Yellow] run attribute @s minecraft:generic.max_health base set 2.0
execute if entity @s[tag=Hardcore] as @a[team=Lobby] run attribute @s minecraft:generic.max_health base set 20.0
execute if entity @s[tag=!Hardcore] as @a unless entity @s[team=!Blue,team=!Yellow] run attribute @s minecraft:generic.max_health base set 20.0