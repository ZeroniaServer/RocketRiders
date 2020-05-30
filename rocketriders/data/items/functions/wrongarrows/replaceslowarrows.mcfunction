#full offhand check
tag @s[nbt=!{Inventory:[{Slot:-106b}]}] remove fullOffhand
tag @s[nbt={Inventory:[{Slot:-106b}]}] add fullOffhand

#slowness arrows
replaceitem entity @s[scores={allSlowArrow=1..,wrongSlowArrow=1..},tag=!triedFirstArrow,tag=!fullOffhand] weapon.offhand tipped_arrow{display:{Name:"{\"text\":\"Slowness Arrow\",\"color\":\"dark_purple\",\"italic\":\"true\",\"bold\":\"true\"}"},CustomPotionEffects:[{Id:2b,Amplifier:1b,Duration:200,ShowParticles:1b}],CustomPotionColor:5596802,HideFlags:63} 1
give @s[scores={allSlowArrow=1..,wrongSlowArrow=1..},tag=!triedFirstArrow,tag=fullOffhand] tipped_arrow{display:{Name:"{\"text\":\"Slowness Arrow\",\"color\":\"dark_purple\",\"italic\":\"true\",\"bold\":\"true\"}"},CustomPotionEffects:[{Id:2b,Amplifier:1b,Duration:200,ShowParticles:1b}],CustomPotionColor:5596802,HideFlags:63} 1
give @s[scores={allSlowArrow=1..,wrongSlowArrow=1..},tag=triedFirstArrow] tipped_arrow{display:{Name:"{\"text\":\"Slowness Arrow\",\"color\":\"dark_purple\",\"italic\":\"true\",\"bold\":\"true\"}"},CustomPotionEffects:[{Id:2b,Amplifier:1b,Duration:200,ShowParticles:1b}],CustomPotionColor:5596802,HideFlags:63} 1
scoreboard players remove @s[scores={allSlowArrow=1..,wrongSlowArrow=1..}] allSlowArrow 1

tag @s[tag=!triedFirstArrow] add triedFirstArrow
execute unless entity @s[scores={allSlowArrow=0}] run function items:wrongarrows/replaceslowarrows
tag @s remove triedFirstArrow