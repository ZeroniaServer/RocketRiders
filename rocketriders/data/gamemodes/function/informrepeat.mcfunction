##Informs players of repeat settings (shared code by all gamemodes)

execute if score $match_repeat_amount global matches 1 run tellraw @a[x=0,tag=informMe] ["",{"text":"| ","color":"dark_gray","bold":true},{"text":"(Keeping settings for ","color":"gray","italic":true},{"text":"1","color":"white","italic":true},{"text":" more match!)","color":"gray","italic":true}]
execute unless score $match_repeat_amount global matches 1 run tellraw @a[x=0,tag=informMe] ["",{"text":"| ","color":"dark_gray","bold":true},{"text":"(Keeping settings for ","color":"gray","italic":true},{"score":{"name":"$match_repeat_amount","objective":"global"},"color":"white","italic":true},{"text":" matches!)","color":"gray","italic":true}]
tellraw @a[x=0,tag=informMe] [""]
