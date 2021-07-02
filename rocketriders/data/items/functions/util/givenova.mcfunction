##Gives executor a Nova Rocket
#Antidupe check
execute if entity @e[tag=Selection,tag=!doStacking,type=armor_stand] store result score @s HasNova run clear @s crossbow{nova:1b} 0
execute if entity @e[tag=Selection,tag=doStacking,type=armor_stand] run scoreboard players set @s HasNova 0

#Title/giving
title @s[scores={HasNova=1..},tag=!fullHotbar] actionbar {"text":"Nova Rocket already obtained.","color":"aqua"}
execute as @s[scores={HasNova=1..},tag=!fullHotbar] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasNova=0},tag=!fullHotbar] actionbar {"text":"Nova Rocket obtained.","color":"aqua"}
give @s[team=Blue,scores={HasNova=0},tag=!fullHotbar] crossbow{nova:1b,Damage:326,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:3,Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;2437522,2651799]}]}}}],Charged:1b,display:{Name:'[{"text":"[Utility] ","color":"light_purple","bold":true},{"text":"Nova Rocket","color":"blue","bold":true}]',Lore:['{"text":"Shoot a Nova Rocket towards where you look.","color":"gray"}','{"text":"Launches players sky-high on impact.","color":"gray"}','{"text":"The arch nemesis of the Canopy.","color":"gray"}']}}
give @s[team=Yellow,scores={HasNova=0},tag=!fullHotbar] crossbow{nova:1b,Damage:326,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:3,Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;14602026,15435844]}]}}}],Charged:1b,display:{Name:'[{"text":"[Utility] ","color":"light_purple","bold":true},{"text":"Nova Rocket","color":"gold","bold":true}]',Lore:['{"text":"Shoot a Nova Rocket towards where you look.","color":"gray"}','{"text":"Launches players sky-high on impact.","color":"gray"}','{"text":"The arch nemesis of the Canopy.","color":"gray"}']}}

#Game tracking
tag @e[tag=Selection,type=armor_stand] add givenNova