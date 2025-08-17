##Utility function for joining Blue team
tag @s[team=!Blue] add JoinBlue
execute if entity @s[team=Blue] run return run tellraw @s [{text:"[",color:"dark_gray"},{text:"!",color:"red",bold:true},{text:"] ",color:"dark_gray"},{"text":"Cannot Join Team!","color":"red","bold":true},"\n",{"text":"You're already on this team!","color":"gray"}]
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!noTeamBalance] run function servermode:joinwarn
execute if entity @s[tag=JoinBlue] run tag @s add servermodeJoin