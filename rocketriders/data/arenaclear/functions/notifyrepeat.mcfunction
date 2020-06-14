#temporarily adds score to show what it was before
scoreboard players add @e[tag=Selection] RepeatSettings 1
tellraw @a ["",{"text":"| ","color":"dark_gray","bold":"true"}]
execute if entity @e[tag=Selection,scores={RepeatSettings=1}] run tellraw @a ["",{"text":"| ","color":"dark_gray","bold":"true"},{"text":"(Repeating settings for ","color":"gray","italic":"true"},{"text":"1","color":"white","italic":"true"},{"text":" game!)","color":"gray","italic":"true"}]
execute if entity @e[tag=Selection,scores={RepeatSettings=2..}] run tellraw @a ["",{"text":"| ","color":"dark_gray","bold":"true"},{"text":"(Repeating settings for ","color":"gray","italic":"true"},{"score":{"name":"@e[tag=Selection,limit=1]","objective":"RepeatSettings"},"color":"white","italic":"true"},{"text":" games!)","color":"gray","italic":"true"}]
scoreboard players remove @e[tag=Selection] RepeatSettings 1