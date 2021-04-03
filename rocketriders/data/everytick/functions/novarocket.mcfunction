######################################################
## NOVA ROCKET: A crossbow equipped with a firework ##
## that launches the enemy and explodes upon impact ##
######################################################

##General Nova Rocket functionality
#Removes necessary tags for dead players
tag @a[scores={respawn=1..}] remove YellowNovaNear
tag @a[scores={respawn=1..}] remove YellowNovaAttach
tag @a[scores={respawn=1..}] remove BlueNovaNear
tag @a[scores={respawn=1..}] remove BlueNovaAttach

#Identifies shot Nova Rockets
execute as @a[team=Blue,scores={NovaShot=1..}] at @s run tag @e[type=firework_rocket,distance=..4,limit=1,tag=!YellowNova,tag=!BlueNova] add BlueNova
execute as @a[team=Yellow,scores={NovaShot=1..}] at @s run tag @e[type=firework_rocket,distance=..4,limit=1,tag=!YellowNova,tag=!BlueNova] add YellowNova
scoreboard players reset @a[scores={NovaShot=1..}] NovaShot

#Identifies players near enemy Nova Rockets
execute as @s[tag=!customNova] as @a[team=Blue] at @s if entity @e[type=firework_rocket,distance=..4,limit=1,tag=YellowNova] run tag @s add YellowNovaNear
execute as @s[tag=!customNova] as @a[team=Yellow] at @s if entity @e[type=firework_rocket,distance=..4,limit=1,tag=BlueNova] run tag @s add BlueNovaNear
execute as @s[tag=!customNova] as @a[team=Blue] at @s if entity @e[distance=..4,limit=1,tag=yellownovatracker,type=area_effect_cloud] run tag @s add YellowNovaNear
execute as @s[tag=!customNova] as @a[team=Yellow] at @s if entity @e[distance=..4,limit=1,tag=bluenovatracker,type=area_effect_cloud] run tag @s add BlueNovaNear
scoreboard players add @a[tag=YellowNovaNear] NovaNear 1
scoreboard players add @a[tag=BlueNovaNear] NovaNear 1
execute as @s[tag=!customNova] as @a[team=Blue,tag=YellowNovaNear,scores={NovaNear=4..}] at @s unless entity @e[type=firework_rocket,distance=..4,limit=1,tag=YellowNova] run tag @s remove YellowNovaNear
execute as @s[tag=!customNova] as @a[team=Blue,tag=!YellowNovaNear,scores={NovaNear=4..}] run scoreboard players reset @s NovaNear
execute as @s[tag=!customNova] as @a[team=Yellow,tag=BlueNovaNear,scores={NovaNear=4..}] at @s unless entity @e[type=firework_rocket,distance=..4,limit=1,tag=BlueNova] run tag @s remove BlueNovaNear
execute as @s[tag=!customNova] as @a[team=Yellow,tag=!BlueNovaNear,scores={NovaNear=4..}] run scoreboard players reset @s NovaNear

#Nova Rocket flight and tracker entity
scoreboard players add @e[tag=BlueNova,type=firework_rocket] novatimer 0
scoreboard players add @e[tag=YellowNova,type=firework_rocket] novatimer 0
execute as @e[tag=BlueNova,scores={novatimer=0},type=firework_rocket] at @s run summon area_effect_cloud ~ ~ ~ {Duration:2000000,Radius:0,Tags:["novatracker","bluenovatracker"]}
execute as @e[tag=YellowNova,scores={novatimer=0},type=firework_rocket] at @s run summon area_effect_cloud ~ ~ ~ {Duration:2000000,Radius:0,Tags:["novatracker","yellownovatracker"]}
execute as @e[tag=novatracker,type=area_effect_cloud] at @s at @e[type=firework_rocket,scores={novatimer=1..},limit=1,sort=nearest,distance=..3] run tp @s ~ ~ ~ ~ ~
scoreboard players add @e[tag=BlueNova,type=firework_rocket] novatimer 1
scoreboard players add @e[tag=YellowNova,type=firework_rocket] novatimer 1
scoreboard players add @e[tag=novatracker,type=area_effect_cloud] novatimer 1

#Nova Rockets explode Canopies
execute as @e[tag=BlueNova,type=firework_rocket] at @s if entity @e[tag=YellowPlatform,distance=..5.5,limit=1] run tag @s add CanopyIsGone
execute as @e[tag=YellowNova,type=firework_rocket] at @s if entity @e[tag=BluePlatform,distance=..5.5,limit=1] run tag @s add CanopyIsGone
execute as @e[tag=CanopyIsGone,tag=YellowNova,type=firework_rocket] at @s as @e[tag=BluePlatform,distance=..5,limit=1,sort=nearest,type=area_effect_cloud] run tag @s add killCanopy
execute as @e[tag=CanopyIsGone,tag=BlueNova,type=firework_rocket] at @s as @e[tag=YellowPlatform,distance=..5,limit=1,sort=nearest,type=area_effect_cloud] run tag @s add killCanopy
execute as @e[tag=CanopyIsGone,tag=YellowNova,type=firework_rocket] at @s as @e[tag=BluePlatform,distance=..5,limit=1,sort=nearest,type=area_effect_cloud] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:3,Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;14602026,15435844]}]}}}}
execute as @e[tag=CanopyIsGone,tag=BlueNova,type=firework_rocket] at @s as @e[tag=YellowPlatform,distance=..5,limit=1,sort=nearest,type=area_effect_cloud] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:3,Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;2437522,2651799]}]}}}}
execute if entity @s[tag=!Explosive] as @e[tag=CanopyIsGone,tag=YellowNova,type=firework_rocket] at @s as @e[tag=BluePlatform,distance=..5,limit=1,sort=nearest,type=area_effect_cloud] at @s run summon creeper ~ ~ ~ {NoGravity:1b,CustomName:"{\"text\":\"a Nova Rocket\"}",ExplosionRadius:5,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s}
execute if entity @s[tag=Explosive] as @e[tag=CanopyIsGone,tag=YellowNova,type=firework_rocket] at @s as @e[tag=BluePlatform,distance=..5,limit=1,sort=nearest,type=area_effect_cloud] at @s run summon creeper ~ ~ ~ {NoGravity:1b,CustomName:"{\"text\":\"a Nova Rocket\"}",ExplosionRadius:7,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s}
execute if entity @s[tag=!Explosive] as @e[tag=CanopyIsGone,tag=BlueNova,type=firework_rocket] at @s as @e[tag=YellowPlatform,distance=..5,limit=1,sort=nearest,type=area_effect_cloud] at @s run summon creeper ~ ~ ~ {NoGravity:1b,CustomName:"{\"text\":\"a Nova Rocket\"}",ExplosionRadius:5,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s}
execute if entity @s[tag=Explosive] as @e[tag=CanopyIsGone,tag=BlueNova,type=firework_rocket] at @s as @e[tag=YellowPlatform,distance=..5,limit=1,sort=nearest,type=area_effect_cloud] at @s run summon creeper ~ ~ ~ {NoGravity:1b,CustomName:"{\"text\":\"a Nova Rocket\"}",ExplosionRadius:7,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s}
execute as @s[tag=!customNova] run kill @e[tag=CanopyIsGone,type=firework_rocket]

#Nova Rocket collision
execute as @e[tag=BlueNova,type=firework_rocket] at @s if entity @e[tag=YellowNova,type=firework_rocket,distance=..1.5] run tag @e[tag=YellowNova,type=firework_rocket,distance=..1.5,limit=1] add CollideNova
execute as @e[tag=BlueNova,type=firework_rocket] at @s if entity @e[tag=YellowNova,type=firework_rocket,distance=..1.5] run tag @s add CollideNova
execute as @e[tag=BlueNova,type=firework_rocket] at @s if entity @e[tag=YellowNova,type=firework_rocket,distance=..1.5] run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;4312372],FadeColors:[I;3887386]}]}}}}
execute as @e[tag=BlueNova,type=firework_rocket] at @s if entity @e[tag=YellowNova,type=firework_rocket,distance=..1.5] run summon creeper ~ ~ ~ {NoGravity:1b,CustomName:"{\"text\":\"a Nova Rocket Collision\"}",ExplosionRadius:6,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s}
execute as @e[tag=CollideNova] run kill @s

#Explosion/particle effects
execute as @e[tag=BlueNova,scores={novatimer=1..10},type=firework_rocket] at @s run data merge entity @s {LifeTime:30,tag:{Fireworks:{Explosions:[{Type:4}]}}}
execute as @e[tag=YellowNova,scores={novatimer=1..10},type=firework_rocket] at @s run data merge entity @s {LifeTime:30,tag:{Fireworks:{Explosions:[{Type:4}]}}}
execute as @e[tag=BlueNova,type=firework_rocket] at @s run particle minecraft:falling_dust lapis_block ~ ~0.2 ~ 0 0 0 1 2
execute as @e[tag=YellowNova,type=firework_rocket] at @s run particle minecraft:falling_dust gold_block ~ ~0.2 ~ 0 0 0 1 2

##Yellow Nova Rocket functionality
#Static
execute if entity @s[tag=!Explosive] as @e[tag=yellownovatracker,type=area_effect_cloud] at @s unless entity @e[tag=YellowNova,distance=..3,limit=1,sort=nearest,type=firework_rocket] run summon creeper ~ ~ ~ {NoGravity:1b,CustomName:"{\"text\":\"a Nova Rocket\"}",ExplosionRadius:2,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s}
execute if entity @s[tag=Explosive] as @e[tag=yellownovatracker,type=area_effect_cloud] at @s unless entity @e[tag=YellowNova,distance=..3,limit=1,sort=nearest,type=firework_rocket] run summon creeper ~ ~ ~ {NoGravity:1b,CustomName:"{\"text\":\"a Nova Rocket\"}",ExplosionRadius:5,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s}
execute as @e[tag=yellownovatracker,type=area_effect_cloud] at @s unless entity @e[tag=YellowNova,distance=..3,limit=1,sort=nearest,type=firework_rocket] run kill @s
execute as @e[tag=YellowNova,scores={novatimer=30..},type=firework_rocket] at @s run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:3,Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;14602026,15435844]}]}}}}
kill @e[tag=YellowNova,scores={novatimer=30..},type=firework_rocket]

#Attach
scoreboard players add @a[tag=YellowNovaAttach] novattach 1
execute as @a[tag=YellowNovaAttach,scores={novattach=1}] at @s run playsound minecraft:entity.firework_rocket.launch player @a ~ ~ ~ 2 1.2
execute as @a[tag=YellowNovaAttach,scores={novattach=1}] run effect give @s levitation 1 60 true
execute as @a[tag=YellowNovaAttach,scores={novattach=4..}] run effect clear @s levitation
execute as @a[tag=YellowNovaAttach,scores={novattach=15}] at @s run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:3,Explosions:[{Type:2,Flicker:1,Trail:1,Colors:[I;14602026,15435844]}]}}}}
execute as @a[tag=YellowNovaAttach,scores={novattach=1..}] at @s run particle firework ~ ~ ~ 0 0 0 0.05 1 force
execute as @a[tag=YellowNovaAttach] run tag @s[scores={novattach=15..}] remove YellowNovaAttach

##Blue Nova Rocket Functionality
#Static
execute if entity @s[tag=!Explosive] as @e[tag=bluenovatracker,type=area_effect_cloud] at @s unless entity @e[tag=BlueNova,distance=..3,limit=1,sort=nearest,type=firework_rocket] run summon creeper ~ ~ ~ {NoGravity:1b,CustomName:"{\"text\":\"a Nova Rocket\"}",ExplosionRadius:2,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s}
execute if entity @s[tag=Explosive] as @e[tag=bluenovatracker,type=area_effect_cloud] at @s unless entity @e[tag=BlueNova,distance=..3,limit=1,sort=nearest,type=firework_rocket] run summon creeper ~ ~ ~ {NoGravity:1b,CustomName:"{\"text\":\"a Nova Rocket\"}",ExplosionRadius:5,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s}
execute as @e[tag=bluenovatracker,type=area_effect_cloud] at @s unless entity @e[tag=BlueNova,distance=..3,limit=1,sort=nearest,type=firework_rocket] run kill @s
execute as @e[tag=BlueNova,scores={novatimer=30..},type=firework_rocket] at @s run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:3,Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;2437522,2651799]}]}}}}
kill @e[tag=BlueNova,scores={novatimer=30..},type=firework_rocket]

#Attach
scoreboard players add @a[tag=BlueNovaAttach] novattach 1
execute as @a[tag=BlueNovaAttach,scores={novattach=1}] at @s run playsound minecraft:entity.firework_rocket.launch player @a ~ ~ ~ 2 1.2
execute as @a[tag=BlueNovaAttach,scores={novattach=1}] run effect give @s levitation 1 60 true
execute as @a[tag=BlueNovaAttach,scores={novattach=4..}] run effect clear @s levitation
execute as @a[tag=BlueNovaAttach,scores={novattach=15}] at @s run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:3,Explosions:[{Type:2,Flicker:1,Trail:1,Colors:[I;2437522,2651799]}]}}}}
execute as @a[tag=BlueNovaAttach,scores={novattach=1..}] at @s run particle firework ~ ~ ~ 0 0 0 0.05 1 force
execute as @a[tag=BlueNovaAttach] run tag @s[scores={novattach=15..}] remove BlueNovaAttach