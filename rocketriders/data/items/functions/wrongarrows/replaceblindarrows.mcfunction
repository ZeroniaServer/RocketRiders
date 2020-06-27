##Replaces wrong blindness arrows with correct arrows via recursive iteration
#Full offhand check
tag @s[nbt=!{Inventory:[{Slot:-106b}]}] remove fullOffhand
tag @s[nbt={Inventory:[{Slot:-106b}]}] add fullOffhand

#Replacement - first arrow given in offhand if applicable
replaceitem entity @s[scores={allBlindArrow=1..,wrongBlindArrow=1..},tag=!triedFirstArrow,tag=!fullOffhand] weapon.offhand tipped_arrow{display:{Name:"{\"text\":\"Blindness Arrow\",\"color\":\"dark_purple\",\"italic\":\"true\",\"bold\":\"true\"}"},CustomPotionEffects:[{Id:15b,Amplifier:0b,Duration:200,ShowParticles:1b}],CustomPotionColor:3158064,HideFlags:63} 1
give @s[scores={allBlindArrow=1..,wrongBlindArrow=1..},tag=!triedFirstArrow,tag=fullOffhand] tipped_arrow{display:{Name:"{\"text\":\"Blindness Arrow\",\"color\":\"dark_purple\",\"italic\":\"true\",\"bold\":\"true\"}"},CustomPotionEffects:[{Id:15b,Amplifier:0b,Duration:200,ShowParticles:1b}],CustomPotionColor:3158064,HideFlags:63} 1
give @s[scores={allBlindArrow=1..,wrongBlindArrow=1..},tag=triedFirstArrow] tipped_arrow{display:{Name:"{\"text\":\"Blindness Arrow\",\"color\":\"dark_purple\",\"italic\":\"true\",\"bold\":\"true\"}"},CustomPotionEffects:[{Id:15b,Amplifier:0b,Duration:200,ShowParticles:1b}],CustomPotionColor:3158064,HideFlags:63} 1

#Track arrow given
scoreboard players remove @s[scores={allBlindArrow=1..,wrongBlindArrow=1..}] allBlindArrow 1
tag @s[tag=!triedFirstArrow] add triedFirstArrow

#Recursive condition
execute unless entity @s[scores={allBlindArrow=0}] run function items:wrongarrows/replaceblindarrows

#End of loop
tag @s remove triedFirstArrow