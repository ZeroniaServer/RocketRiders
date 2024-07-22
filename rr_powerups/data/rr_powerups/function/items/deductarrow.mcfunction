##Reduces dropped arrow's count (for Infinity)
scoreboard players set $foundplayerarrow CmdData 0
execute if entity @e[x=0,type=marker,scores={capturePoint=1},limit=1] on origin if entity @s[team=Blue,tag=!itemDeducted] run scoreboard players set $foundplayerarrow CmdData 1
execute if entity @e[x=0,type=marker,scores={capturePoint=2},limit=1] on origin if entity @s[team=Yellow,tag=!itemDeducted] run scoreboard players set $foundplayerarrow CmdData 1
execute if score $foundplayerarrow CmdData matches 0 run return fail
execute if items entity @s contents arrow[count=1] run kill
execute if items entity @s contents arrow[count~{min:2}] run item modify entity @s contents {function:"set_count","count":-1,add:true}
execute on origin run tag @s add itemDeducted