execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=EditedSettings] if score $mcancelcount CmdData matches 0 run scoreboard players set $mcancel CmdData 1
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=EditedSettings] if score $mcancelcount CmdData matches 0 run function lobby:cancelsettings/stopper

execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=EditedSettings] unless score $mcancel CmdData matches -1 if score $mcancelcount CmdData matches 2.. run tellraw @s [{"translate":"Cannot edit game settings right now. Try again in %s seconds.","color":"red","with":[{"score":{"name":"$mcancelcount","objective":"CmdData"},"color":"#ff8585","bold":true}]}]
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=EditedSettings] unless score $mcancel CmdData matches -1 if score $mcancelcount CmdData matches 1 run tellraw @s [{"translate":"Cannot edit game settings right now. Try again in %s second.","color":"red","with":[{"text":"1","color":"#ff8585","bold":true}]}]

execute if score $mcancel CmdData matches -1 run tellraw @s [{"translate":"Cannot cancel the match. Players are currently on teams.","color":"red"}]

execute positioned -57 203 78 run playsound ui.button.click master @s ~ ~ ~ 1 1
scoreboard players reset @s editSettings