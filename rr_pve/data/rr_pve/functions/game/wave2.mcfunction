#announce wave 2
execute as @e[tag=Selection,scores={waveTimer=610..620}] run title @a times 0 30 10
execute as @e[tag=Selection,scores={waveTimer=610}] run title @a title ["",{"text":"Wave 2","color":"blue","bold":true}]
execute as @e[tag=Selection,scores={waveTimer=615}] run title @a title ["",{"text":"Wave 2","color":"white","bold":true}]
execute as @e[tag=Selection,scores={waveTimer=620}] run title @a title ["",{"text":"Wave 2","color":"blue","bold":true}]
execute as @e[tag=Selection,scores={waveTimer=610}] run playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 1000 0.5
execute as @e[tag=Selection,scores={waveTimer=615}] run playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 1000 0.7
execute as @e[tag=Selection,scores={waveTimer=620}] run playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 1000 0.9
execute as @e[tag=Selection,scores={waveTimer=610..620}] run title @a subtitle ["",{"text":"Has started...","color":"aqua","bold":true}]

#Wave2
execute as @e[tag=Selection,scores={waveTimer=620}] run give @a[team=Blue] arrow{display:{Name:"{\"text\":\"Arrow\",\"color\":\"light_purple\",\"italic\":\"true\",\"bold\":\"true\"}"}} 7
execute as @e[tag=Selection,scores={waveTimer=620}] as @a[team=Blue] run function items:util/givefireball
execute as @e[tag=Selection,scores={waveTimer=620}] run summon armor_stand 12 64 66 {Tags:[PVEantspawn]}
execute as @e[tag=Selection,scores={waveTimer=620}] run summon armor_stand 12 64 66 {Tags:[PVEantspawn]}
execute as @e[tag=Selection,scores={waveTimer=620}] run summon armor_stand 12 64 66 {Tags:[PVEantspawn]}
execute as @e[tag=Selection,scores={waveTimer=620}] run summon armor_stand 12 64 66 {Tags:[PVEeguardspawn]}
execute as @e[tag=Selection,scores={waveTimer=620}] run summon armor_stand 12 64 66 {Tags:[PVEeguardspawn]}
execute as @e[tag=Selection,scores={waveTimer=620}] run summon armor_stand 12 64 66 {Tags:[PVEeguardspawn]}
execute as @e[tag=Selection,scores={waveTimer=620}] run summon armor_stand 12 64 66 {Tags:[PVEeguardspawn]}