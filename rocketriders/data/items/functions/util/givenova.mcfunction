##Gives executor a Nova Rocket
#Antidupe check
execute if entity @e[type=armor_stand,tag=Selection,tag=!doStacking] store result score @s HasNova run clear @s crossbow{nova:1b} 0
execute if entity @e[type=armor_stand,tag=Selection,tag=doStacking] run scoreboard players set @s HasNova 0
tag @s[tag=itemDeducted] remove fullHotbar

#Title/giving
title @s[scores={HasNova=1..},tag=!fullHotbar,tag=!itemDeducted] actionbar {"text":"Nova Rocket already obtained.","color":"aqua"}
execute if entity @s[scores={HasNova=1..},tag=!fullHotbar,tag=!itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[tag=!fullHotbar,tag=itemDeducted] actionbar {"text":"Nova Rocket already obtained.","color":"aqua"}
execute if entity @s[tag=!fullHotbar,tag=itemDeducted] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
title @s[scores={HasNova=0},tag=!fullHotbar,tag=!itemDeducted] actionbar {"text":"Nova Rocket obtained.","color":"aqua"}
execute if entity @e[tag=Selection,tag=!customNova] run give @s[team=Blue,scores={HasNova=0},tag=!fullHotbar] crossbow{nova:1b,Damage:465,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:3,Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;2437522,2651799]}]}}}],Charged:1b,display:{Name:'[{"text":"[Utility] ","color":"light_purple","bold":true},{"text":"Nova Rocket","color":"blue","bold":true}]',Lore:['{"text":"Shoots a Nova Rocket where you look.","color":"gray"}','{"text":"Launches players sky-high on impact.","color":"gray"}','{"text":"The arch nemesis of the Canopy!","color":"gray"}']},HideFlags:127}
execute if entity @e[tag=Selection,tag=customNova] run give @s[team=Blue,scores={HasNova=0},tag=!fullHotbar] crossbow{nova:1b,Damage:465,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:2,Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;15790320],FadeColors:[I;11743532,3887386,2437522,8073150,2651799,14188952,4312372,14602026,6719955,12801229,15435844]}]}}}],Charged:1b,display:{Name:'[{"text":"[Utility] ","color":"light_purple","bold":true},{"text":"Nova Rocket","color":"blue","bold":true}]',Lore:['{"text":"Shoots a Nova Rocket where you look.","color":"gray"}','{"text":"Launches players sky-high on impact.","color":"gray"}','{"text":"The arch nemesis of the Canopy!","color":"gray"}']},HideFlags:127}
give @s[team=Yellow,scores={HasNova=0},tag=!fullHotbar] crossbow{nova:1b,Damage:465,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:3,Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;14602026,15435844]}]}}}],Charged:1b,display:{Name:'[{"text":"[Utility] ","color":"light_purple","bold":true},{"text":"Nova Rocket","color":"gold","bold":true}]',Lore:['{"text":"Shoots a Nova Rocket where you look.","color":"gray"}','{"text":"Launches players sky-high on impact.","color":"gray"}','{"text":"The arch nemesis of the Canopy!","color":"gray"}']},HideFlags:127}

#Game tracking
tag @e[type=armor_stand,tag=Selection,tag=tetrisTime] add givenNova