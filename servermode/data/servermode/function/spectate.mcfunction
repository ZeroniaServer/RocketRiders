##Utility function for joining Yellow team
scoreboard players reset @s spectate
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=EditedSettings] run return run tag @s[predicate=!custom:team/spectator] add JoinSpec
execute if entity @s[predicate=custom:team/spectator] run return run tellraw @s [{text:"[",color:"dark_gray"},{text:"!",color:"red",bold:true},{text:"] ",color:"dark_gray"},{"text":"You're already spectating!","color":"gray"}]
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!EditedSettings] run tellraw @s [{text:"[",color:"dark_gray"},{text:"!",color:"red",bold:true},{text:"] ",color:"dark_gray"},{"text":"Wait until game settings are confirmed first.","color":"gray"}]