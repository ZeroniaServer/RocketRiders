execute as @a[team=Blue,scores={NovaShot=1..}] at @s run tag @e[type=firework_rocket,distance=..4,limit=1,tag=!YellowNovarocket,tag=!BlueNovarocket] add BlueNova
execute as @a[team=Yellow,scores={NovaShot=1..}] at @s run tag @e[type=firework_rocket,distance=..4,limit=1,tag=!YellowNovarocket,tag=!BlueNovarocket] add YellowNova

scoreboard players add @e[tag=BlueNova] novaTimer 0
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
execute as @e[tag=BlueNova] at @s if entity @e[tag=YellowPlatform,distance=..3,limit=1] run tag @s add CanopyIsGone
execute as @e[tag=YellowNova] at @s if entity @e[tag=BluePlatform,distance=..3,limit=1] run tag @s add CanopyIsGone
execute as @e[tag=CanopyIsGone,tag=YellowNova] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;14602026,15435844]}]}}}}
execute as @e[tag=CanopyIsGone,tag=BlueNova] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;2651799,6719955]}]}}}}
execute as @e[tag=CanopyIsGone] at @s run summon creeper ~ ~ ~ {NoGravity:1b,CustomName:"{\"text\":\"a Nova Propellant\"}",ExplosionRadius:5,Fuse:0,EntityTag:{Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2000,ShowParticles:0b}]}}
kill @e[tag=CanopyIsGone]

##Set effects
execute as @e[tag=BlueNova,scores={novatimer=1..10}] at @s run data merge entity @s {LifeTime:30,tag:{Fireworks:{Explosions:[{Type:4}]}}}
execute as @e[tag=YellowNova,scores={novatimer=1..10}] at @s run data merge entity @s {LifeTime:30,tag:{Fireworks:{Explosions:[{Type:4}]}}}
execute as @e[tag=BlueNova] at @s run particle minecraft:falling_dust lapis_block ~ ~0.2 ~ 0 0 0 1 2
execute as @e[tag=YellowNova] at @s run particle minecraft:falling_dust gold_block ~ ~0.2 ~ 0 0 0 1 2


##Yellow
execute as @e[tag=YellowNova,scores={novatimer=..29}] at @s run tag @a[tag=!YellowNovaAttach,team=Blue,distance=..3,limit=1,sort=nearest] add YellowNovaAttach
execute as @e[tag=YellowNova,scores={novatimer=..29}] at @s if entity @a[team=Blue,tag=YellowNovaAttach,distance=..3,limit=1,sort=nearest] run kill @s
execute as @e[tag=yellownovatracker,scores={novatimer=..29}] at @s unless entity @e[tag=YellowNova,distance=..3,limit=1,sort=nearest] run tag @a[tag=!YellowNovaAttach,team=Blue,distance=..5,limit=1,sort=nearest] add YellowNovaAttach
execute as @e[tag=yellownovatracker,scores={novatimer=30..}] at @s unless entity @e[tag=YellowNova,distance=..3,limit=1,sort=nearest] run kill @s


#Static
execute as @e[tag=YellowNova,scores={novatimer=30..}] at @s run summon creeper ~ ~ ~ {NoGravity:1b,CustomName:"{\"text\":\"a Nova Propellant\"}",ExplosionRadius:2,Fuse:0,EntityTag:{Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2000,ShowParticles:0b}]}}
execute as @e[tag=YellowNova,scores={novatimer=30..}] at @s run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:4,Flicker:0,Trail:0,Colors:[I;14602026,15435844]}]}}}}
kill @e[tag=YellowNova,scores={novatimer=30..}]

#Attach
scoreboard players add @a[tag=YellowNovaAttach] novattach 1
execute as @a[tag=YellowNovaAttach,scores={novattach=1}] at @s run playsound minecraft:entity.firework_rocket.launch player @a ~ ~ ~ 2 1.2
execute as @a[tag=YellowNovaAttach,scores={novattach=1}] run effect give @s levitation 1 40 true
execute as @a[tag=YellowNovaAttach,scores={novattach=6..}] run effect clear @s levitation
execute as @a[tag=YellowNovaAttach,scores={novattach=1..}] at @s run particle firework ~ ~ ~ 0 0 0 0.05 1 force
execute as @a[tag=YellowNovaAttach,scores={novattach=5..}] at @s run tp @s ^-0.2 ^0.15 ^0.1
execute as @a[tag=YellowNovaAttach,scores={novattach=15..}] at @s run summon creeper ~ ~ ~ {NoGravity:1b,CustomName:"{\"text\":\"a Nova Propellant\"}",ExplosionRadius:0,Fuse:0,EntityTag:{Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2000,ShowParticles:0b}]}}
execute as @a[tag=YellowNovaAttach,scores={novattach=15..}] at @s run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:4,Flicker:0,Trail:0,Colors:[I;14602026,15435844]}]}}}}
execute as @a[tag=YellowNovaAttach] run tag @s[scores={novattach=15..}] remove YellowNovaAttach


##Blue
execute as @e[tag=BlueNova,scores={novatimer=..29}] at @s run tag @a[tag=!BlueNovaAttach,team=Yellow,distance=..3,limit=1,sort=nearest] add BlueNovaAttach
execute as @e[tag=BlueNova,scores={novatimer=..29}] at @s if entity @a[team=Yellow,tag=BlueNovaAttach,distance=..3,limit=1,sort=nearest] run kill @s
execute as @e[tag=bluenovatracker,scores={novatimer=..29}] at @s unless entity @e[tag=BlueNova,distance=..3,limit=1,sort=nearest] run tag @a[tag=!BlueNovaAttach,team=Yellow,distance=..5,limit=1,sort=nearest] add BlueNovaAttach
execute as @e[tag=bluenovatracker,scores={novatimer=30..}] at @s unless entity @e[tag=BlueNova,distance=..3,limit=1,sort=nearest] run kill @s

#Static
execute as @e[tag=BlueNova,scores={novatimer=30..}] at @s run summon creeper ~ ~ ~ {NoGravity:1b,CustomName:"{\"text\":\"a Nova Propellant\"}",ExplosionRadius:2,Fuse:0,EntityTag:{Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2000,ShowParticles:0b}]}}
execute as @e[tag=BlueNova,scores={novatimer=30..}] at @s run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:4,Flicker:0,Trail:0,Colors:[I;2651799,6719955]}]}}}}
kill @e[tag=BlueNova,scores={novatimer=30..}]

#Attach
scoreboard players add @a[tag=BlueNovaAttach] novattach 1
execute as @a[tag=BlueNovaAttach,scores={novattach=1}] at @s run playsound minecraft:entity.firework_rocket.launch player @a ~ ~ ~ 2 1.2
execute as @a[tag=BlueNovaAttach,scores={novattach=1}] run effect give @s levitation 1 40 true
execute as @a[tag=BlueNovaAttach,scores={novattach=6..}] run effect clear @s levitation
execute as @a[tag=BlueNovaAttach,scores={novattach=1..}] at @s run particle firework ~ ~ ~ 0 0 0 0.05 1 force
execute as @a[tag=BlueNovaAttach,scores={novattach=5..}] at @s run tp @s ^-0.2 ^0.15 ^0.1
execute as @a[tag=BlueNovaAttach,scores={novattach=15..}] at @s run summon creeper ~ ~ ~ {NoGravity:1b,CustomName:"{\"text\":\"a Nova Propellant\"}",ExplosionRadius:0,Fuse:0,EntityTag:{Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2000,ShowParticles:0b}]}}
execute as @a[tag=BlueNovaAttach,scores={novattach=15..}] at @s run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:4,Flicker:0,Trail:0,Colors:[I;2651799,6719955]}]}}}}
execute as @a[tag=BlueNovaAttach] run tag @s[scores={novattach=15..}] remove BlueNovaAttach

scoreboard players reset @a[scores={novattach=15..}] novattach
scoreboard players reset @a[team=Lobby] novattach
scoreboard players reset @a[team=Developer] novattach