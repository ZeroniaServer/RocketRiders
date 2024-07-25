title @s[tag=Infinity] actionbar [{"text":"Infinity Saber timer reset to ","color":"light_purple"},{"text":"30 seconds.","color":"red"}]
tag @s[tag=Infinity] add DelayActionbar
scoreboard players set @s[tag=Infinity] actionbardelay 0
title @s[tag=!Infinity] title [{"text":" "}]
title @s[tag=!Infinity] subtitle ["",{"text":"Infinity Saber:","color":"dark_purple","italic":true,"bold":true},{"text":" Lasts for ","color":"light_purple","italic":true},{"text":"30 seconds.","color":"red"}]
function rr_powerups:items/saber/infinity
tag @s[tag=!Infinity] add needsArrow
tag @s[tag=needsArrow] add Infinity
execute if entity @s[tag=needsArrow] store result score @s HasArrows run clear @s arrow 0
execute if entity @s[tag=needsArrow,scores={HasArrows=0}] run tag @s add arrowcheck
execute if entity @s[tag=needsArrow,scores={HasArrows=0}] as @e[x=0,type=item] if items entity @s contents arrow run function rr_powerups:items/deductarrow
tag @s[tag=needsArrow,tag=!itemDeducted,scores={HasArrows=0}] add DelayActionbar
execute if entity @s[tag=needsArrow,scores={HasArrows=0}] run function items:util/givearrows
tag @s remove needsArrow
tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=tetrisTime] add givenInfinity
execute at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 1.5