##Informs players of repeat settings (shared code by all gamemodes)

scoreboard players add @s RepeatSettings 1
tellraw @a[tag=informMe] ["",{"text":"| ","color":"dark_gray","bold":true}]
execute if entity @s[scores={RepeatSettings=1}] run tellraw @a[tag=informMe] ["",{"text":"| ","color":"dark_gray","bold":true},{"text":"(Keeping settings for ","color":"gray","italic":true},{"text":"1","color":"white","italic":true},{"text":" game!)","color":"gray","italic":true}]
execute if entity @s[scores={RepeatSettings=2..}] run tellraw @a[tag=informMe] ["",{"text":"| ","color":"dark_gray","bold":true},{"text":"(Keeping settings for ","color":"gray","italic":true},{"score":{"name":"@e[type=armor_stand,tag=Selection,limit=1]","objective":"RepeatSettings"},"color":"white","italic":true},{"text":" games!)","color":"gray","italic":true}]
scoreboard players remove @s RepeatSettings 1
tellraw @a[tag=informMe] [""]