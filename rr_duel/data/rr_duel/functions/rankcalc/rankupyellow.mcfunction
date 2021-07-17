title @s title {"text":"RANK UP!","color":"dark_green"}
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1
execute if score $NewYellowRank XP matches 1 run title @s subtitle ["",{"text":"Your rank is now ","color":"green"},{"text":"Bronze","bold":true,"color":"#CD7F32"}]
execute if score $NewYellowRank XP matches 2 run title @s subtitle ["",{"text":"Your rank is now ","color":"green"},{"text":"Silver","bold":true,"color":"gray"}]
execute if score $NewYellowRank XP matches 3 run title @s subtitle ["",{"text":"Your rank is now ","color":"green"},{"text":"Gold","bold":true,"color":"gold"}]
execute if score $NewYellowRank XP matches 4 run title @s subtitle ["",{"text":"Your rank is now ","color":"green"},{"text":"Diamond","bold":true,"color":"aqua"}]
execute if score $NewYellowRank XP matches 5 run title @s subtitle ["",{"text":"Your rank is now ","color":"green"},{"text":"Champion","bold":true,"color":"red"}]