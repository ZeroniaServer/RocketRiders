#full offhand check
tag @s[nbt=!{Inventory:[{Slot:-106b}]}] remove fullOffhand
tag @s[nbt={Inventory:[{Slot:-106b}]}] add fullOffhand

#lobby arrows
execute if entity @e[tag=Selection,tag=!GameStarted] run replaceitem entity @s[scores={allArrow=1..,wrongArrow=1..},tag=!triedFirstArrow,tag=!fullOffhand] weapon.offhand arrow{display:{Name:"{\"text\":\"Arrow\",\"color\":\"light_purple\",\"italic\":\"true\",\"bold\":\"true\"}"},Lobby:1b} 1
execute if entity @e[tag=Selection,tag=!GameStarted] run give @s[scores={allArrow=1..,wrongArrow=1..},tag=!triedFirstArrow,tag=fullOffhand] arrow{display:{Name:"{\"text\":\"Arrow\",\"color\":\"light_purple\",\"italic\":\"true\",\"bold\":\"true\"}"},Lobby:1b} 1
execute if entity @e[tag=Selection,tag=!GameStarted] run give @s[scores={allArrow=1..,wrongArrow=1..},tag=triedFirstArrow] arrow{display:{Name:"{\"text\":\"Arrow\",\"color\":\"light_purple\",\"italic\":\"true\",\"bold\":\"true\"}"},Lobby:1b} 1

#regular arrows
execute if entity @e[tag=Selection,tag=GameStarted] run replaceitem entity @s[scores={allArrow=1..,wrongArrow=1..},tag=!triedFirstArrow,tag=!fullOffhand] weapon.offhand arrow{display:{Name:"{\"text\":\"Arrow\",\"color\":\"light_purple\",\"italic\":\"true\",\"bold\":\"true\"}"}} 1
execute if entity @e[tag=Selection,tag=GameStarted] run give @s[scores={allArrow=1..,wrongArrow=1..},tag=!triedFirstArrow,tag=fullOffhand] arrow{display:{Name:"{\"text\":\"Arrow\",\"color\":\"light_purple\",\"italic\":\"true\",\"bold\":\"true\"}"}} 1
execute if entity @e[tag=Selection,tag=GameStarted] run give @s[scores={allArrow=1..,wrongArrow=1..},tag=triedFirstArrow] arrow{display:{Name:"{\"text\":\"Arrow\",\"color\":\"light_purple\",\"italic\":\"true\",\"bold\":\"true\"}"}} 1

scoreboard players remove @s[scores={allArrow=1..,wrongArrow=1..}] allArrow 1

tag @s[tag=!triedFirstArrow] add triedFirstArrow
execute unless entity @s[scores={allArrow=0}] run function items:wrongarrows/replacearrows
tag @s remove triedFirstArrow