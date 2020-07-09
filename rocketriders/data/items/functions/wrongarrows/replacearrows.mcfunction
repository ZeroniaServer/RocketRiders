##Replaces wrong arrows with correct arrows via recursive iteration
#Full offhand check
tag @s[nbt=!{Inventory:[{Slot:-106b}]}] remove fullOffhand
tag @s[nbt={Inventory:[{Slot:-106b}]}] add fullOffhand

#Replacement (lobby) - first arrow given in offhand if applicable
execute if entity @e[tag=Selection,tag=!GameStarted,type=armor_stand] run replaceitem entity @s[scores={allArrow=1..,wrongArrow=1..},tag=!triedFirstArrow,tag=!fullOffhand] weapon.offhand arrow{display:{Name:"{\"text\":\"Arrow\",\"color\":\"light_purple\",\"italic\":\"true\",\"bold\":\"true\"}"},Lobby:1b} 1
execute if entity @e[tag=Selection,tag=!GameStarted,type=armor_stand] run give @s[scores={allArrow=1..,wrongArrow=1..},tag=!triedFirstArrow,tag=fullOffhand] arrow{display:{Name:"{\"text\":\"Arrow\",\"color\":\"light_purple\",\"italic\":\"true\",\"bold\":\"true\"}"},Lobby:1b} 1
execute if entity @e[tag=Selection,tag=!GameStarted,type=armor_stand] run give @s[scores={allArrow=1..,wrongArrow=1..},tag=triedFirstArrow] arrow{display:{Name:"{\"text\":\"Arrow\",\"color\":\"light_purple\",\"italic\":\"true\",\"bold\":\"true\"}"},Lobby:1b} 1

#Replacement (regular) - first arrow given in offhand if applicable
execute if entity @e[tag=Selection,tag=GameStarted,type=armor_stand] run replaceitem entity @s[scores={allArrow=1..,wrongArrow=1..},tag=!triedFirstArrow,tag=!fullOffhand] weapon.offhand arrow{display:{Name:"{\"text\":\"Arrow\",\"color\":\"light_purple\",\"italic\":\"true\",\"bold\":\"true\"}"}} 1
execute if entity @e[tag=Selection,tag=GameStarted,type=armor_stand] run give @s[scores={allArrow=1..,wrongArrow=1..},tag=!triedFirstArrow,tag=fullOffhand] arrow{display:{Name:"{\"text\":\"Arrow\",\"color\":\"light_purple\",\"italic\":\"true\",\"bold\":\"true\"}"}} 1
execute if entity @e[tag=Selection,tag=GameStarted,type=armor_stand] run give @s[scores={allArrow=1..,wrongArrow=1..},tag=triedFirstArrow] arrow{display:{Name:"{\"text\":\"Arrow\",\"color\":\"light_purple\",\"italic\":\"true\",\"bold\":\"true\"}"}} 1

#Track arrow given
scoreboard players remove @s[scores={allArrow=1..,wrongArrow=1..}] allArrow 1
tag @s[tag=!triedFirstArrow] add triedFirstArrow

#Recursive condition
execute unless entity @s[scores={allArrow=0}] run function items:wrongarrows/replacearrows

#End of loop
tag @s remove triedFirstArrow