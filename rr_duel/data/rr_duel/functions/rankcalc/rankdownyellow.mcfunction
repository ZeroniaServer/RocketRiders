title @s title {"text":"RANK DOWN!","color":"dark_red"}
playsound minecraft:entity.blaze.death master @s ~ ~ ~ 1 1
execute if score $NewYellowRank XP matches 0 run title @s subtitle ["",{"text":"You are now ","color":"red"},{"text":"Unranked","bold":true,"color":"dark_gray"}]
execute if score $NewYellowRank XP matches 1 run title @s subtitle ["",{"text":"Your rank is now ","color":"red"},{"text":"Bronze","bold":true,"color":"#CD7F32"}]
execute if score $NewYellowRank XP matches 2 run title @s subtitle ["",{"text":"Your rank is now ","color":"red"},{"text":"Silver","bold":true,"color":"gray"}]
execute if score $NewYellowRank XP matches 3 run title @s subtitle ["",{"text":"Your rank is now ","color":"red"},{"text":"Gold","bold":true,"color":"gold"}]
execute if score $NewYellowRank XP matches 4 run title @s subtitle ["",{"text":"Your rank is now ","color":"red"},{"text":"Diamond","bold":true,"color":"aqua"}]