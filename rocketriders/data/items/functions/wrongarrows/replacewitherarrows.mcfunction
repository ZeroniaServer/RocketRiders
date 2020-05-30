#full offhand check
tag @s[nbt=!{Inventory:[{Slot:-106b}]}] remove fullOffhand
tag @s[nbt={Inventory:[{Slot:-106b}]}] add fullOffhand

#wither arrows
replaceitem entity @s[scores={allWitherArrow=1..,wrongWitherArrow=1..},tag=!triedFirstArrow,tag=!fullOffhand] weapon.offhand tipped_arrow{display:{Name:"{\"text\":\"Wither Arrow\",\"color\":\"dark_purple\",\"italic\":\"true\",\"bold\":\"true\"}"},CustomPotionEffects:[{Id:20b,Amplifier:0b,Duration:100,ShowParticles:1b}],CustomPotionColor:4008735,HideFlags:63} 1
give @s[scores={allWitherArrow=1..,wrongWitherArrow=1..},tag=!triedFirstArrow,tag=fullOffhand] tipped_arrow{display:{Name:"{\"text\":\"Wither Arrow\",\"color\":\"dark_purple\",\"italic\":\"true\",\"bold\":\"true\"}"},CustomPotionEffects:[{Id:20b,Amplifier:0b,Duration:100,ShowParticles:1b}],CustomPotionColor:4008735,HideFlags:63} 1
give @s[scores={allWitherArrow=1..,wrongWitherArrow=1..},tag=triedFirstArrow] tipped_arrow{display:{Name:"{\"text\":\"Wither Arrow\",\"color\":\"dark_purple\",\"italic\":\"true\",\"bold\":\"true\"}"},CustomPotionEffects:[{Id:20b,Amplifier:0b,Duration:100,ShowParticles:1b}],CustomPotionColor:4008735,HideFlags:63} 1
scoreboard players remove @s[scores={allWitherArrow=1..,wrongWitherArrow=1..}] allWitherArrow 1

tag @s[tag=!triedFirstArrow] add triedFirstArrow
execute unless entity @s[scores={allWitherArrow=0}] run function items:wrongarrows/replacewitherarrows
tag @s remove triedFirstArrow