#Antidupe check
execute store result score @s HasTippedArrows run clear @s tipped_arrow 0
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players operation @s HasTippedArrows %= 64 CmdData
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] as @s[scores={HasTippedArrows=1..63},tag=fullHotbar] run tag @s remove fullHotbar
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players set @s HasTippedArrows 0
execute if entity @e[tag=Selection,tag=!doStacking,type=armor_stand] as @s[scores={HasTippedArrows=1..3},tag=fullHotbar] run tag @s remove fullHotbar

#Title/giving
title @s[scores={HasTippedArrows=4..},tag=!fullHotbar] actionbar {"text":"Tipped Arrows already obtained.","color":"light_purple"}
execute as @s[scores={HasTippedArrows=4..},tag=!fullHotbar] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasTippedArrows=..3},tag=!fullHotbar] actionbar {"text":"Wither Arrows obtained.","color":"light_purple"}
give @s[scores={HasTippedArrows=0},tag=!fullHotbar,tag=fullOffhand] tipped_arrow{display:{Name:'{"text":"Wither Arrow","color":"dark_purple","italic":true,"bold":true}'},CustomPotionEffects:[{Id:20b,Amplifier:2b,Duration:150,ShowParticles:1b}],CustomPotionColor:4008735,HideFlags:63} 4
give @s[scores={HasTippedArrows=1},tag=!fullHotbar,tag=fullOffhand] tipped_arrow{display:{Name:'{"text":"Wither Arrow","color":"dark_purple","italic":true,"bold":true}'},CustomPotionEffects:[{Id:20b,Amplifier:2b,Duration:150,ShowParticles:1b}],CustomPotionColor:4008735,HideFlags:63} 3
give @s[scores={HasTippedArrows=2},tag=!fullHotbar,tag=fullOffhand] tipped_arrow{display:{Name:'{"text":"Wither Arrow","color":"dark_purple","italic":true,"bold":true}'},CustomPotionEffects:[{Id:20b,Amplifier:2b,Duration:150,ShowParticles:1b}],CustomPotionColor:4008735,HideFlags:63} 2
give @s[scores={HasTippedArrows=3},tag=!fullHotbar,tag=fullOffhand] tipped_arrow{display:{Name:'{"text":"Wither Arrow","color":"dark_purple","italic":true,"bold":true}'},CustomPotionEffects:[{Id:20b,Amplifier:2b,Duration:150,ShowParticles:1b}],CustomPotionColor:4008735,HideFlags:63} 1
item replace entity @s[scores={HasTippedArrows=0},tag=!fullHotbar,tag=!fullOffhand] weapon.offhand with tipped_arrow{display: {Name: '{"text":"Wither Arrow","color":"dark_purple","italic":true,"bold":true}'}, CustomPotionEffects: [{Id: 20b, Amplifier: 2b, Duration: 150, ShowParticles: 1b}], CustomPotionColor: 4008735, HideFlags: 63} 4
item replace entity @s[scores={HasTippedArrows=1},tag=!fullHotbar,tag=!fullOffhand] weapon.offhand with tipped_arrow{display: {Name: '{"text":"Wither Arrow","color":"dark_purple","italic":true,"bold":true}'}, CustomPotionEffects: [{Id: 20b, Amplifier: 2b, Duration: 150, ShowParticles: 1b}], CustomPotionColor: 4008735, HideFlags: 63} 3
item replace entity @s[scores={HasTippedArrows=2},tag=!fullHotbar,tag=!fullOffhand] weapon.offhand with tipped_arrow{display: {Name: '{"text":"Wither Arrow","color":"dark_purple","italic":true,"bold":true}'}, CustomPotionEffects: [{Id: 20b, Amplifier: 2b, Duration: 150, ShowParticles: 1b}], CustomPotionColor: 4008735, HideFlags: 63} 2
item replace entity @s[scores={HasTippedArrows=3},tag=!fullHotbar,tag=!fullOffhand] weapon.offhand with tipped_arrow{display: {Name: '{"text":"Wither Arrow","color":"dark_purple","italic":true,"bold":true}'}, CustomPotionEffects: [{Id: 20b, Amplifier: 2b, Duration: 150, ShowParticles: 1b}], CustomPotionColor: 4008735, HideFlags: 63} 1
execute as @s[scores={HasTippedArrows=..3},tag=!fullHotbar,tag=!fullOffhand] at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.25 2
tag @e[tag=Selection,type=armor_stand] add givenWitherArr