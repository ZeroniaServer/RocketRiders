##Notifies players that settings are being repeated for a certain game
tellraw @a[x=0] ["",{"text":"| ","color":"dark_gray","bold":true}]
execute if entity @e[x=0,type=armor_stand,tag=Selection,scores={RepeatSettings=1}] run tellraw @a[x=0] ["",{"text":"| ","color":"dark_gray","bold":true},{"text":"(Keeping settings for ","color":"gray","italic":true},{"text":"1","color":"white","italic":true},{"text":" game!)","color":"gray","italic":true}]
execute if entity @e[x=0,type=armor_stand,tag=Selection,scores={RepeatSettings=2..}] run tellraw @a[x=0] ["",{"text":"| ","color":"dark_gray","bold":true},{"text":"(Keeping settings for ","color":"gray","italic":true},{"score":{"name":"@e[x=0,type=armor_stand,tag=Selection,limit=1]","objective":"RepeatSettings"},"color":"white","italic":true},{"text":" games!)","color":"gray","italic":true}]
#Update repeat settings sign
data modify block -70 192 79 front_text.messages[1] set value "[{\"score\":{\"name\":\"@e[x=0,type=armor_stand,tag=Selection,limit=1]\",\"objective\":\"RepeatSettings\"},\"color\":\"black\",\"bold\":true},{\"text\":\"x\",\"color\":\"black\",\"bold\":\"false\"}]"
scoreboard players remove @e[x=0,type=armor_stand,tag=Selection] RepeatSettings 1
tellraw @a[x=0] [""]