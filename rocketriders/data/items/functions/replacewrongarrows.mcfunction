give @s[scores={allArrow=1..,wrongArrow=1..}] arrow{display:{Name:"{\"text\":\"Arrow\",\"color\":\"light_purple\",\"italic\":\"true\",\"bold\":\"true\"}"}} 1
scoreboard players remove @s[scores={allArrow=1..,wrongArrow=1..}] allArrow 1

give @s[scores={allLeviArrow=1..,wrongLeviArrow=1..}] tipped_arrow{display:{Name:"{\"text\":\"Levitation Arrow\",\"color\":\"dark_purple\",\"italic\":\"true\",\"bold\":\"true\"}"},CustomPotionEffects:[{Id:25b,Amplifier:0b,Duration:100,ShowParticles:1b}],CustomPotionColor:11793919,HideFlags:63} 1
scoreboard players remove @s[scores={allLeviArrow=1..,wrongLeviArrow=1..}] allLeviArrow 1

give @s[scores={allSlowArrow=1..,wrongSlowArrow=1..}] tipped_arrow{display:{Name:"{\"text\":\"Slowness Arrow\",\"color\":\"dark_purple\",\"italic\":\"true\",\"bold\":\"true\"}"},CustomPotionEffects:[{Id:2b,Amplifier:1b,Duration:200,ShowParticles:1b}],CustomPotionColor:5596802,HideFlags:63} 1
scoreboard players remove @s[scores={allSlowArrow=1..,wrongSlowArrow=1..}] allSlowArrow 1

give @s[scores={allBlindArrow=1..,wrongBlindArrow=1..}] tipped_arrow{display:{Name:"{\"text\":\"Blindness Arrow\",\"color\":\"dark_purple\",\"italic\":\"true\",\"bold\":\"true\"}"},CustomPotionEffects:[{Id:15b,Amplifier:0b,Duration:200,ShowParticles:1b}],CustomPotionColor:3158064,HideFlags:63} 1
scoreboard players remove @s[scores={allBlindArrow=1..,wrongBlindArrow=1..}] allBlindArrow 1

give @s[scores={allPoisArrow=1..,wrongPoisArrow=1..}] tipped_arrow{display:{Name:"{\"text\":\"Poison Arrow\",\"color\":\"dark_purple\",\"italic\":\"true\",\"bold\":\"true\"}"},Potion:"minecraft:long_poison",HideFlags:63} 1
scoreboard players remove @s[scores={allPoisArrow=1..,wrongPoisArrow=1..}] allPoisArrow 1

execute unless entity @s[scores={allArrow=0,allLeviArrow=0,allSlowArrow=0,allBlindArrow=0,allPoisArrow=0}] run function items:replacewrongarrows