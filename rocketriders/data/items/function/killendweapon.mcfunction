##Kills thrown weapon at the end of the game/start of Sudden Death based on who won
scoreboard players set $killme CmdData 0
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=BlueWonFirst] on origin if entity @s[team=Yellow] run scoreboard players set $killme CmdData 1
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=YellowWonFirst] on origin if entity @s[team=Blue] run scoreboard players set $killme CmdData 1
execute if score $killme CmdData matches 1 run kill