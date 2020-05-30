#full offhand check
tag @s[nbt=!{Inventory:[{Slot:-106b}]}] remove fullOffhand
tag @s[nbt={Inventory:[{Slot:-106b}]}] add fullOffhand

#levitation arrows
replaceitem entity @s[scores={allLeviArrow=1..,wrongLeviArrow=1..},tag=!triedFirstArrow,tag=!fullOffhand] weapon.offhand tipped_arrow{display:{Name:"{\"text\":\"Levitation Arrow\",\"color\":\"dark_purple\",\"italic\":\"true\",\"bold\":\"true\"}"},CustomPotionEffects:[{Id:25b,Amplifier:0b,Duration:100,ShowParticles:1b}],CustomPotionColor:11793919,HideFlags:63} 1
give @s[scores={allLeviArrow=1..,wrongLeviArrow=1..},tag=!triedFirstArrow,tag=fullOffhand] tipped_arrow{display:{Name:"{\"text\":\"Levitation Arrow\",\"color\":\"dark_purple\",\"italic\":\"true\",\"bold\":\"true\"}"},CustomPotionEffects:[{Id:25b,Amplifier:0b,Duration:100,ShowParticles:1b}],CustomPotionColor:11793919,HideFlags:63} 1
give @s[scores={allLeviArrow=1..,wrongLeviArrow=1..},tag=triedFirstArrow] tipped_arrow{display:{Name:"{\"text\":\"Levitation Arrow\",\"color\":\"dark_purple\",\"italic\":\"true\",\"bold\":\"true\"}"},CustomPotionEffects:[{Id:25b,Amplifier:0b,Duration:100,ShowParticles:1b}],CustomPotionColor:11793919,HideFlags:63} 1
scoreboard players remove @s[scores={allLeviArrow=1..,wrongLeviArrow=1..}] allLeviArrow 1

tag @s[tag=!triedFirstArrow] add triedFirstArrow
execute unless entity @s[scores={allLeviArrow=0}] run function items:wrongarrows/replaceleviarrows
tag @s remove triedFirstArrow