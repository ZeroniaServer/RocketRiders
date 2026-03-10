execute as @e[limit=1,x=0,type=armor_stand,tag=Selection] run function arenaclear:refreshsigns

scoreboard objectives modify FlagDisp displayname ["",{"text":"Flag Count","color":"green","bold":true}]