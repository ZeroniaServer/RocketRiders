#hotfix: remove nova tags for dead players
tag @a[scores={respawn=1..}] remove YellowNovaNear
tag @a[scores={respawn=1..}] remove YellowNovaAttach
tag @a[scores={respawn=1..}] remove BlueNovaNear
tag @a[scores={respawn=1..}] remove BlueNovaAttach

execute as @a[team=Blue,scores={NovaShot=1..}] at @s run tag @e[type=firework_rocket,distance=..4,limit=1,tag=!YellowNova,tag=!BlueNova] add BlueNova
execute as @a[team=Yellow,scores={NovaShot=1..}] at @s run tag @e[type=firework_rocket,distance=..4,limit=1,tag=!YellowNova,tag=!BlueNova] add YellowNova

execute as @a[team=Blue] at @s if entity @e[type=firework_rocket,distance=..4,limit=1,tag=YellowNova] run tag @s add YellowNovaNear
execute as @a[team=Yellow] at @s if entity @e[type=firework_rocket,distance=..4,limit=1,tag=BlueNova] run tag @s add BlueNovaNear
execute as @a[team=Blue] at @s if entity @e[distance=..4,limit=1,tag=yellownovatracker] run tag @s add YellowNovaNear
execute as @a[team=Yellow] at @s if entity @e[distance=..4,limit=1,tag=bluenovatracker] run tag @s add BlueNovaNear

scoreboard players add @a[tag=YellowNovaNear] NovaNear 1
scoreboard players add @a[tag=BlueNovaNear] NovaNear 1
execute as @a[team=Blue,tag=YellowNovaNear,scores={NovaNear=2..}] at @s unless entity @e[type=firework_rocket,distance=..4,limit=1,tag=BlueNova] run tag @s remove YellowNovaNear
execute as @a[team=Blue,tag=!YellowNovaNear,scores={NovaNear=2..}] run scoreboard players reset @s NovaNear
execute as @a[team=Yellow,tag=BlueNovaNear,scores={NovaNear=2..}] at @s unless entity @e[type=firework_rocket,distance=..4,limit=1,tag=YellowNova] run tag @s remove BlueNovaNear
execute as @a[team=Yellow,tag=!BlueNovaNear,scores={NovaNear=2..}] run scoreboard players reset @s NovaNear

scoreboard players add @e[tag=BlueNova] novatimer 0
scoreboard players add @e[tag=YellowNova] novatimer 0

##Tracker entity
execute as @e[tag=BlueNova,scores={novatimer=0}] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,DisabledSlots:2039583,NoGravity:1b,Marker:1b,Silent:1b,Tags:["novatracker","bluenovatracker"]}
execute as @e[tag=YellowNova,scores={novatimer=0}] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,DisabledSlots:2039583,NoGravity:1b,Marker:1b,Silent:1b,Tags:["novatracker","yellownovatracker"]}
execute as @e[tag=novatracker] at @s at @e[type=firework_rocket,scores={novatimer=1..},limit=1,sort=nearest,distance=..3] run tp @s ~ ~ ~ ~ ~

scoreboard players add @e[tag=BlueNova] novatimer 1
scoreboard players add @e[tag=YellowNova] novatimer 1
scoreboard players add @e[tag=novatracker] novatimer 1

scoreboard players reset @a[scores={NovaShot=1..}] NovaShot

##Goodbye canopy
execute as @e[tag=BlueNova] at @s if entity @e[tag=YellowPlatform,distance=..5,limit=1] run tag @s add CanopyIsGone
execute as @e[tag=YellowNova] at @s if entity @e[tag=BluePlatform,distance=..5,limit=1] run tag @s add CanopyIsGone
execute as @e[tag=CanopyIsGone,tag=YellowNova] at @s as @e[tag=BluePlatform,distance=..5,limit=1,sort=nearest] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:3,Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;14602026,15435844]}]}}}}
execute as @e[tag=CanopyIsGone,tag=BlueNova] at @s as @e[tag=YellowPlatform,distance=..5,limit=1,sort=nearest] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:3,Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;2437522,2651799]}]}}}}
execute if entity @s[tag=!Explosive] as @e[tag=CanopyIsGone,tag=YellowNova] at @s as @e[tag=BluePlatform,distance=..5,limit=1,sort=nearest] at @s run summon creeper ~ ~1 ~ {NoGravity:1b,CustomName:"{\"text\":\"a Nova Rocket\"}",ExplosionRadius:3,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s}
execute if entity @s[tag=Explosive] as @e[tag=CanopyIsGone,tag=YellowNova] at @s as @e[tag=BluePlatform,distance=..5,limit=1,sort=nearest] at @s run summon creeper ~ ~1 ~ {NoGravity:1b,CustomName:"{\"text\":\"a Nova Rocket\"}",ExplosionRadius:5,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s}
execute if entity @s[tag=!Explosive] as @e[tag=CanopyIsGone,tag=BlueNova] at @s as @e[tag=YellowPlatform,distance=..5,limit=1,sort=nearest] at @s run summon creeper ~ ~1 ~ {NoGravity:1b,CustomName:"{\"text\":\"a Nova Rocket\"}",ExplosionRadius:3,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s}
execute if entity @s[tag=Explosive] as @e[tag=CanopyIsGone,tag=BlueNova] at @s as @e[tag=YellowPlatform,distance=..5,limit=1,sort=nearest] at @s run summon creeper ~ ~1 ~ {NoGravity:1b,CustomName:"{\"text\":\"a Nova Rocket\"}",ExplosionRadius:5,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s}
kill @e[tag=CanopyIsGone]

##Set effects
execute as @e[tag=BlueNova,scores={novatimer=1..10}] at @s run data merge entity @s {LifeTime:30,tag:{Fireworks:{Explosions:[{Type:4}]}}}
execute as @e[tag=YellowNova,scores={novatimer=1..10}] at @s run data merge entity @s {LifeTime:30,tag:{Fireworks:{Explosions:[{Type:4}]}}}
execute as @e[tag=BlueNova] at @s run particle minecraft:falling_dust lapis_block ~ ~0.2 ~ 0 0 0 1 2
execute as @e[tag=YellowNova] at @s run particle minecraft:falling_dust gold_block ~ ~0.2 ~ 0 0 0 1 2


##Yellow
execute if entity @s[tag=!Explosive] as @e[tag=yellownovatracker] at @s unless entity @e[tag=YellowNova,distance=..3,limit=1,sort=nearest] run summon creeper ~ ~ ~ {NoGravity:1b,CustomName:"{\"text\":\"a Nova Rocket\"}",ExplosionRadius:2,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s}
execute if entity @s[tag=Explosive] as @e[tag=yellownovatracker] at @s unless entity @e[tag=YellowNova,distance=..3,limit=1,sort=nearest] run summon creeper ~ ~ ~ {NoGravity:1b,CustomName:"{\"text\":\"a Nova Rocket\"}",ExplosionRadius:5,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s}
execute as @e[tag=yellownovatracker] at @s unless entity @e[tag=YellowNova,distance=..3,limit=1,sort=nearest] run kill @s

#Static
execute as @e[tag=YellowNova,scores={novatimer=30..}] at @s run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:3,Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;14602026,15435844]}]}}}}
kill @e[tag=YellowNova,scores={novatimer=30..}]

#Attach
scoreboard players add @a[tag=YellowNovaAttach] novattach 1
execute as @a[tag=YellowNovaAttach,scores={novattach=1}] at @s run playsound minecraft:entity.firework_rocket.launch player @a ~ ~ ~ 2 1.2
execute as @a[tag=YellowNovaAttach,scores={novattach=1}] run effect give @s levitation 1 50 true
execute as @a[tag=YellowNovaAttach,scores={novattach=6..}] run effect clear @s levitation
execute as @a[tag=YellowNovaAttach,scores={novattach=1..}] at @s run particle firework ~ ~ ~ 0 0 0 0.05 1 force
#execute if entity @s[tag=!Explosive] as @a[tag=YellowNovaAttach,scores={novattach=15..}] at @s run summon creeper ~ ~ ~ {NoGravity:1b,CustomName:"{\"text\":\"a Nova Rocket\"}",ExplosionRadius:0,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s}
#execute if entity @s[tag=Explosive] as @a[tag=YellowNovaAttach,scores={novattach=15..}] at @s run summon creeper ~ ~ ~ {NoGravity:1b,CustomName:"{\"text\":\"a Nova Rocket\"}",ExplosionRadius:2,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s}
#execute as @a[tag=YellowNovaAttach,scores={novattach=15..}] at @s run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:4,Flicker:0,Trail:0,Colors:[I;14602026,15435844]}]}}}}
execute as @a[tag=YellowNovaAttach] run tag @s[scores={novattach=15..}] remove YellowNovaAttach

##Blue
execute if entity @s[tag=!Explosive] as @e[tag=bluenovatracker] at @s unless entity @e[tag=BlueNova,distance=..3,limit=1,sort=nearest] run summon creeper ~ ~ ~ {NoGravity:1b,CustomName:"{\"text\":\"a Nova Rocket\"}",ExplosionRadius:2,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s}
execute if entity @s[tag=Explosive] as @e[tag=bluenovatracker] at @s unless entity @e[tag=BlueNova,distance=..3,limit=1,sort=nearest] run summon creeper ~ ~ ~ {NoGravity:1b,CustomName:"{\"text\":\"a Nova Rocket\"}",ExplosionRadius:5,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s}
execute as @e[tag=bluenovatracker] at @s unless entity @e[tag=BlueNova,distance=..3,limit=1,sort=nearest] run kill @s


#Static
execute as @e[tag=BlueNova,scores={novatimer=30..}] at @s run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:3,Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;2437522,2651799]}]}}}}
kill @e[tag=BlueNova,scores={novatimer=30..}]

#Attach
scoreboard players add @a[tag=BlueNovaAttach] novattach 1
execute as @a[tag=BlueNovaAttach,scores={novattach=1}] at @s run playsound minecraft:entity.firework_rocket.launch player @a ~ ~ ~ 2 1.2
execute as @a[tag=BlueNovaAttach,scores={novattach=1}] run effect give @s levitation 1 50 true
execute as @a[tag=BlueNovaAttach,scores={novattach=6..}] run effect clear @s levitation
execute as @a[tag=BlueNovaAttach,scores={novattach=1..}] at @s run particle firework ~ ~ ~ 0 0 0 0.05 1 force
#execute if entity @s[tag=!Explosive] as @a[tag=BlueNovaAttach,scores={novattach=15..}] at @s run summon creeper ~ ~ ~ {NoGravity:1b,CustomName:"{\"text\":\"a Nova Rocket\"}",ExplosionRadius:0,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s}
#execute if entity @s[tag=Explosive] as @a[tag=BlueNovaAttach,scores={novattach=15..}] at @s run summon creeper ~ ~ ~ {NoGravity:1b,CustomName:"{\"text\":\"a Nova Rocket\"}",ExplosionRadius:2,Fuse:0,Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,DeathTime:19s}
#execute as @a[tag=BlueNovaAttach,scores={novattach=15..}] at @s run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:4,Flicker:0,Trail:0,Colors:[I;2651799,6719955]}]}}}}
execute as @a[tag=BlueNovaAttach] run tag @s[scores={novattach=15..}] remove BlueNovaAttach

#Reset
scoreboard players reset @a[scores={novattach=15..}] novattach
scoreboard players reset @a[team=!Yellow,team=!Blue] novattach
tag @a[team=!Yellow,team=!Blue] remove BlueNovaAttach
tag @a[team=!Yellow,team=!Blue] remove YellowNovaAttach