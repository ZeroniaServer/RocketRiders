#announce wave 3
execute as @e[tag=Selection,scores={waveTimer=1210..1220}] run title @a times 0 30 10
execute as @e[tag=Selection,scores={waveTimer=1210}] run title @a title ["",{"text":"Wave 3","color":"blue","bold":true}]
execute as @e[tag=Selection,scores={waveTimer=1215}] run title @a title ["",{"text":"Wave 3","color":"white","bold":true}]
execute as @e[tag=Selection,scores={waveTimer=1220}] run title @a title ["",{"text":"Wave 3","color":"blue","bold":true}]
execute as @e[tag=Selection,scores={waveTimer=1210}] run playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 1000 0.5
execute as @e[tag=Selection,scores={waveTimer=1215}] run playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 1000 0.7
execute as @e[tag=Selection,scores={waveTimer=1220}] run playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 1000 0.9
execute as @e[tag=Selection,scores={waveTimer=1210..1220}] run title @a subtitle ["",{"text":"Has started...","color":"aqua","bold":true}]

#Wave3
execute as @e[tag=Selection,scores={waveTimer=1220}] run give @a[team=Blue] arrow{display:{Name:"{\"text\":\"Arrow\",\"color\":\"light_purple\",\"italic\":\"true\",\"bold\":\"true\"}"}} 7
execute as @e[tag=Selection,scores={waveTimer=1220}] as @a[team=Blue] run function items:util/givefireball
execute as @e[tag=Selection,scores={waveTimer=1220}] as @a[team=Blue] run function items:util/givevortex
execute as @e[tag=Selection,scores={waveTimer=1220}] run summon armor_stand 12 64 66 {Tags:[PVEwarspawn]}
execute as @e[tag=Selection,scores={waveTimer=1220}] run summon armor_stand 12 64 66 {Tags:[PVEtomaspawn]}
execute as @e[tag=Selection,scores={waveTimer=1220}] run summon armor_stand 12 64 66 {Tags:[PVEtomaspawn]}
execute as @e[tag=Selection,scores={waveTimer=1220}] run summon armor_stand 12 64 66 {Tags:[PVEbladespawn]}
execute as @e[tag=Selection,scores={waveTimer=1220}] run summon armor_stand 12 64 66 {Tags:[PVEeguardspawn]}
execute as @e[tag=Selection,scores={waveTimer=1220}] run summon armor_stand 12 64 66 {Tags:[PVEeguardspawn]}
execute as @e[tag=Selection,scores={waveTimer=1220}] run summon armor_stand 12 64 66 {Tags:[PVEeguardspawn]}