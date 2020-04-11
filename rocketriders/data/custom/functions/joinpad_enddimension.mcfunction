#particles
execute as @e[tag=joinpadEnd] at @s run particle minecraft:falling_dust minecraft:green_concrete ~ ~1 ~ 0.5 1 0.5 0.1 5 force @a[team=Developer]
execute as @e[tag=joinpadEnd] at @s run particle barrier ~ ~1 ~ 0 0 0 0 1 force @a[team=!Developer]

#devs join end
execute as @a[team=Developer] at @s if entity @e[tag=joinpadEnd,distance=..1] in the_end run tp @s 100 49 0

#single-use titles for people who shouldn't join end
execute as @a[team=!Developer,tag=!illegalEntry] at @s if entity @e[tag=joinpadEnd,distance=..1] run title @s title ["",{"text":"Access Denied.","color":"red","bold":true}]
execute as @a[team=!Developer,tag=!illegalEntry] at @s if entity @e[tag=joinpadEnd,distance=..1] run title @s subtitle ["",{"text":"You can't enter a staff only area!","color":"dark_red","bold":false}]
execute as @a[team=!Developer,tag=!illegalEntry] at @s if entity @e[tag=joinpadEnd,distance=..1] run title @s times 5 30 5
execute as @e[tag=joinpadEnd] at @s run tag @a[team=!Developer,tag=!illegalEntry,distance=..1] add illegalEntry
execute as @e[tag=joinpadEnd] at @s run tag @a[team=!Developer,distance=2..] remove illegalEntry