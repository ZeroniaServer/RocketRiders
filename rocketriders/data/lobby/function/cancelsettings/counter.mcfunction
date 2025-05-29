execute if score @e[x=0,type=armor_stand,tag=Selection,limit=1] yellowsCount matches 1.. run return run schedule clear lobby:cancelsettings/counter
execute if score @e[x=0,type=armor_stand,tag=Selection,limit=1] bluesCount matches 1.. run return run schedule clear lobby:cancelsettings/counter

scoreboard players remove $mcancelcount CmdData 1

execute if score $mcancelcount CmdData matches 0 run data modify block -57 203 78 front_text.messages[2] set value ""
execute if score $mcancelcount CmdData matches 0 run return 1

data modify block -57 203 78 front_text.messages[2] set value {"translate":"AVAILABLE IN %s","color":"white","with":[{"color":"#ff8585","score":{"name":"$mcancelcount","objective":"CmdData"}}]}
schedule function lobby:cancelsettings/counter 1s