#announce wave 1
execute as @e[tag=Selection,scores={waveTimer=10..20}] run title @a times 0 30 10
execute as @e[tag=Selection,scores={waveTimer=10}] run title @a title ["",{"text":"Wave 1","color":"blue","bold":true}]
execute as @e[tag=Selection,scores={waveTimer=15}] run title @a title ["",{"text":"Wave 1","color":"white","bold":true}]
execute as @e[tag=Selection,scores={waveTimer=20}] run title @a title ["",{"text":"Wave 1","color":"blue","bold":true}]
execute as @e[tag=Selection,scores={waveTimer=10}] run playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 1000 0.5
execute as @e[tag=Selection,scores={waveTimer=15}] run playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 1000 0.7
execute as @e[tag=Selection,scores={waveTimer=20}] run playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 1000 0.9
execute as @e[tag=Selection,scores={waveTimer=1..20}] run title @a subtitle ["",{"text":"Has started...","color":"aqua","bold":true}]

#Wave1
execute as @e[tag=Selection,scores={waveTimer=20}] run give @a[team=Blue] arrow{display:{Name:"{\"text\":\"Arrow\",\"color\":\"light_purple\",\"italic\":\"true\",\"bold\":\"true\"}"}} 7
execute as @e[tag=Selection,scores={waveTimer=20}] run summon armor_stand 12 64 66 {Tags:[PVEantspawn]}
execute as @e[tag=Selection,scores={waveTimer=20}] run summon armor_stand 12 64 66 {Tags:[PVEantspawn]}
execute as @e[tag=Selection,scores={waveTimer=20}] run summon armor_stand 12 64 66 {Tags:[PVEantspawn]}
execute as @e[tag=Selection,scores={waveTimer=20}] run summon armor_stand 12 64 66 {Tags:[PVEantspawn]}
execute as @e[tag=Selection,scores={waveTimer=20}] run summon armor_stand 12 64 66 {Tags:[PVEantspawn]}