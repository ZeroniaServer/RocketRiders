##Notifies players that settings are being repeated for a certain game

#temporarily adds score to show what it was before
scoreboard players add @e[tag=Selection,type=armor_stand] RepeatSettings 1
tellraw @a ["",{"text":"| ","color":"dark_gray","bold":true}]
execute if entity @e[tag=Selection,scores={RepeatSettings=1},type=armor_stand] run tellraw @a ["",{"text":"| ","color":"dark_gray","bold":true},{"text":"(Repeating settings for ","color":"gray","italic":true},{"text":"1","color":"white","italic":true},{"text":" game!)","color":"gray","italic":true}]
execute if entity @e[tag=Selection,scores={RepeatSettings=2..},type=armor_stand] run tellraw @a ["",{"text":"| ","color":"dark_gray","bold":true},{"text":"(Repeating settings for ","color":"gray","italic":true},{"score":{"name":"@e[tag=Selection,limit=1,type=armor_stand]","objective":"RepeatSettings"},"color":"white","italic":true},{"text":" games!)","color":"gray","italic":true}]
scoreboard players remove @e[tag=Selection,type=armor_stand] RepeatSettings 1
tellraw @a [""]