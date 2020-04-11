scoreboard players add @e[tag=BlueNova] novatimer 1
scoreboard players add @e[tag=YellowNova] novatimer 1
execute as @e[scores={novatimer=1}] at @s run playsound minecraft:entity.firework_rocket.launch player @a ~ ~ ~ 1 0.8
execute as @e[scores={novatimer=1}] at @s run replaceitem entity @s armor.head firework_rocket
execute as @e[scores={novatimer=1..}] at @s run particle minecraft:firework ~ ~ ~ 0 0 0 0.05 1 force

##Yellow
execute as @e[tag=YellowNova,scores={novatimer=1..29}] at @s run tag @a[team=Blue,distance=..3,limit=1,sort=nearest] add YellowNovaAttach
execute as @e[tag=YellowNova,scores={novatimer=1..}] at @s if entity @a[team=Blue,distance=..3,limit=1,sort=nearest] run kill @s

#Static
execute as @e[tag=YellowNova] at @s if block ~ ~0.2 ~ air run tp @s ~ ~0.2 ~
execute as @e[tag=YellowNova] at @s if block ~ ~0.2 ~ air run tp @s ~ ~0.2 ~
execute as @e[tag=YellowNova] at @s if block ~ ~0.2 ~ air run tp @s ~ ~0.2 ~
execute as @e[tag=YellowNova] at @s if block ~ ~0.2 ~ air run tp @s ~ ~0.2 ~
execute as @e[tag=YellowNova] at @s if block ~ ~0.2 ~ air run tp @s ~ ~0.2 ~
execute as @e[tag=YellowNova] at @s if block ~ ~0.2 ~ air run tp @s ~ ~0.2 ~
execute as @e[tag=YellowNova] at @s if block ~ ~0.2 ~ air run tp @s ~ ~0.2 ~
execute as @e[tag=YellowNova] at @s if block ~ ~0.2 ~ air run tp @s ~ ~0.2 ~
execute as @e[tag=YellowNova] at @s if block ~ ~0.2 ~ air run tp @s ~ ~0.2 ~
execute as @e[tag=YellowNova] at @s if block ~ ~0.2 ~ air run tp @s ~ ~0.2 ~
execute as @e[tag=YellowNova,scores={novatimer=30..}] at @s run summon creeper ~ ~ ~ {NoGravity:1b,CustomName:"{\"text\":\"a Nova Rocket\"}",ExplosionRadius:1,Fuse:0,EntityTag:{Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2000,ShowParticles:0b}]}}
execute as @e[tag=YellowNova,scores={novatimer=30..}] at @s run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:4,Flicker:0,Trail:0,Colors:[I;14602026,15435844]}]}}}}
kill @e[tag=YellowNova,scores={novatimer=30..}]

#Attach
scoreboard players add @a[tag=YellowNovaAttach] novattach 1
execute as @a[tag=YellowNovaAttach,scores={novattach=1}] at @s run playsound minecraft:entity.firework_rocket.launch player @a ~ ~ ~ 2 1.2
execute as @a[tag=YellowNovaAttach,scores={novattach=1}] at @s run tp @s ~ ~ ~ 0 -90
execute as @a[tag=YellowNovaAttach,scores={novattach=1}] run replaceitem entity @s armor.head firework_rocket
execute as @a[tag=YellowNovaAttach,scores={novattach=1}] run effect give @s levitation 1 40 true
execute as @a[tag=YellowNovaAttach,scores={novattach=1..}] at @s run particle firework ~ ~ ~ 0 0 0 0.05 1 force
execute as @a[tag=YellowNovaAttach,scores={novattach=25..}] at @s run tp @s ^-0.2 ^0.15 ^0.1
execute as @a[tag=YellowNovaAttach,scores={novattach=30..}] at @s run replaceitem entity @s armor.head air
execute as @a[tag=YellowNovaAttach,scores={novattach=30..}] at @s run summon creeper ~ ~ ~ {NoGravity:1b,CustomName:"{\"text\":\"a Nova Rocket\"}",ExplosionRadius:1,Fuse:0,EntityTag:{Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2000,ShowParticles:0b}]}}
execute as @a[tag=YellowNovaAttach,scores={novattach=30..}] at @s run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:4,Flicker:0,Trail:0,Colors:[I;14602026,15435844]}]}}}}
execute as @a[tag=YellowNovaAttach] run tag @s[scores={novattach=30..}] remove YellowNovaAttach


##Blue
execute as @e[tag=BlueNova,scores={novatimer=1..29}] at @s run tag @a[team=Yellow,distance=..3,limit=1,sort=nearest] add BlueNovaAttach
execute as @e[tag=BlueNova,scores={novatimer=1..}] at @s if entity @a[team=Yellow,distance=..3,limit=1,sort=nearest] run kill @s

#Static
execute as @e[tag=BlueNova] at @s if block ~ ~0.2 ~ air run tp @s ~ ~0.2 ~
execute as @e[tag=BlueNova] at @s if block ~ ~0.2 ~ air run tp @s ~ ~0.2 ~
execute as @e[tag=BlueNova] at @s if block ~ ~0.2 ~ air run tp @s ~ ~0.2 ~
execute as @e[tag=BlueNova] at @s if block ~ ~0.2 ~ air run tp @s ~ ~0.2 ~
execute as @e[tag=BlueNova] at @s if block ~ ~0.2 ~ air run tp @s ~ ~0.2 ~
execute as @e[tag=BlueNova] at @s if block ~ ~0.2 ~ air run tp @s ~ ~0.2 ~
execute as @e[tag=BlueNova] at @s if block ~ ~0.2 ~ air run tp @s ~ ~0.2 ~
execute as @e[tag=BlueNova] at @s if block ~ ~0.2 ~ air run tp @s ~ ~0.2 ~
execute as @e[tag=BlueNova] at @s if block ~ ~0.2 ~ air run tp @s ~ ~0.2 ~
execute as @e[tag=BlueNova] at @s if block ~ ~0.2 ~ air run tp @s ~ ~0.2 ~
execute as @e[tag=BlueNova,scores={novatimer=30..}] at @s run summon creeper ~ ~ ~ {NoGravity:1b,CustomName:"{\"text\":\"a Nova Rocket\"}",ExplosionRadius:1,Fuse:0,EntityTag:{Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2000,ShowParticles:0b}]}}
execute as @e[tag=BlueNova,scores={novatimer=30..}] at @s run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:4,Flicker:0,Trail:0,Colors:[I;2651799,6719955]}]}}}}
kill @e[tag=BlueNova,scores={novatimer=30..}]

#Attach
scoreboard players add @a[tag=BlueNovaAttach] novattach 1
execute as @a[tag=BlueNovaAttach,scores={novattach=1}] at @s run playsound minecraft:entity.firework_rocket.launch player @a ~ ~ ~ 2 1.2
execute as @a[tag=BlueNovaAttach,scores={novattach=1}] at @s run tp @s ~ ~ ~ 0 -90
execute as @a[tag=BlueNovaAttach,scores={novattach=1}] run replaceitem entity @s armor.head firework_rocket
execute as @a[tag=BlueNovaAttach,scores={novattach=1}] run effect give @s levitation 1 40 true
execute as @a[tag=BlueNovaAttach,scores={novattach=1..}] at @s run particle firework ~ ~ ~ 0 0 0 0.05 1 force
execute as @a[tag=BlueNovaAttach,scores={novattach=25..}] at @s run tp @s ^-0.2 ^0.15 ^0.1
execute as @a[tag=BlueNovaAttach,scores={novattach=30..}] at @s run replaceitem entity @s armor.head air
execute as @a[tag=BlueNovaAttach,scores={novattach=30..}] at @s run summon creeper ~ ~ ~ {NoGravity:1b,CustomName:"{\"text\":\"a Nova Rocket\"}",ExplosionRadius:1,Fuse:0,EntityTag:{Silent:1b,CustomNameVisible:0b,NoAI:1b,CanPickUpLoot:0b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2000,ShowParticles:0b}]}}
execute as @a[tag=BlueNovaAttach,scores={novattach=30..}] at @s run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:4,Flicker:0,Trail:0,Colors:[I;2651799,6719955]}]}}}}
execute as @a[tag=BlueNovaAttach] run tag @s[scores={novattach=30..}] remove BlueNovaAttach

scoreboard players reset @a[scores={novattach=30..}] novattach
scoreboard players reset @a[team=Lobby] novattach
scoreboard players reset @a[team=Developer] novattach