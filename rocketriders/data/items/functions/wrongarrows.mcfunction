#specific arrow counts
execute if entity @e[tag=Selection,tag=!GameStarted] store result score @s HasArrows run clear @s arrow{display:{Name:"{\"text\":\"Arrow\",\"color\":\"light_purple\",\"italic\":\"true\",\"bold\":\"true\"}"},Lobby:1b} 0
execute if entity @e[tag=Selection,tag=GameStarted] store result score @s HasArrows run clear @s arrow{display:{Name:"{\"text\":\"Arrow\",\"color\":\"light_purple\",\"italic\":\"true\",\"bold\":\"true\"}"}} 0

execute store result score @s HasLeviArrow run clear @s tipped_arrow{display:{Name:"{\"text\":\"Levitation Arrow\",\"color\":\"dark_purple\",\"italic\":\"true\",\"bold\":\"true\"}"},CustomPotionEffects:[{Id:25b,Amplifier:0b,Duration:100,ShowParticles:1b}],CustomPotionColor:11793919,HideFlags:63} 0

execute store result score @s HasSlowArrow run clear @s tipped_arrow{display:{Name:"{\"text\":\"Slowness Arrow\",\"color\":\"dark_purple\",\"italic\":\"true\",\"bold\":\"true\"}"},CustomPotionEffects:[{Id:2b,Amplifier:1b,Duration:200,ShowParticles:1b}],CustomPotionColor:5596802,HideFlags:63} 0

execute store result score @s HasBlindArrow run clear @s tipped_arrow{display:{Name:"{\"text\":\"Blindness Arrow\",\"color\":\"dark_purple\",\"italic\":\"true\",\"bold\":\"true\"}"},CustomPotionEffects:[{Id:15b,Amplifier:0b,Duration:200,ShowParticles:1b}],CustomPotionColor:3158064,HideFlags:63} 0

execute store result score @s HasPoisArrow run clear @s tipped_arrow{display:{Name:"{\"text\":\"Poison Arrow\",\"color\":\"dark_purple\",\"italic\":\"true\",\"bold\":\"true\"}"},Potion:"minecraft:long_poison",HideFlags:63} 0

#all arrow counts
execute as @a store result score @s allArrow run clear @s arrow 0

execute as @a store result score @s allLeviArrow run clear @s tipped_arrow{CustomPotionEffects:[{Id:25b,Amplifier:0b,Duration:100,ShowParticles:1b}],CustomPotionColor:11793919} 0

execute as @a store result score @s allSlowArrow run clear @s tipped_arrow{CustomPotionEffects:[{Id:2b,Amplifier:1b,Duration:200,ShowParticles:1b}],CustomPotionColor:5596802} 0

execute as @a store result score @s allBlindArrow run clear @s tipped_arrow{CustomPotionEffects:[{Id:15b,Amplifier:0b,Duration:200,ShowParticles:1b}],CustomPotionColor:3158064} 0

execute as @a store result score @s allPoisArrow run clear @s tipped_arrow{Potion:"minecraft:long_poison"} 0

#wrong arrow counts
execute store result score @s wrongArrow run clear @s arrow 0
scoreboard players operation @s wrongArrow -= @s HasArrows

execute store result score @s wrongLeviArrow run clear @s tipped_arrow{CustomPotionEffects:[{Id:25b,Amplifier:0b,Duration:100,ShowParticles:1b}],CustomPotionColor:11793919} 0
scoreboard players operation @s wrongLeviArrow -= @s HasLeviArrow

execute store result score @s wrongSlowArrow run clear @s tipped_arrow{CustomPotionEffects:[{Id:2b,Amplifier:1b,Duration:200,ShowParticles:1b}],CustomPotionColor:5596802} 0
scoreboard players operation @s wrongSlowArrow -= @s HasSlowArrow

execute store result score @s wrongBlindArrow run clear @s tipped_arrow{CustomPotionEffects:[{Id:15b,Amplifier:0b,Duration:200,ShowParticles:1b}],CustomPotionColor:3158064} 0
scoreboard players operation @s wrongBlindArrow -= @s HasBlindArrow

execute store result score @s wrongPoisArrow run clear @s tipped_arrow{Potion:"minecraft:long_poison"} 0
scoreboard players operation @s wrongPoisArrow -= @s HasPoisArrow

#begin clearing wrong arrows
execute unless entity @s[scores={wrongArrow=0,wrongLeviArrow=0,wrongSlowArrow=0,wrongBlindArrow=0,wrongPoisArrow=0}] run function items:clearwrongarrows