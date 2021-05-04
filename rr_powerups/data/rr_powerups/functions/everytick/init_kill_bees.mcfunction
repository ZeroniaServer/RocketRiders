##Kills excessive bees for lag reduction purposes
scoreboard players add @e[type=bee,limit=1,sort=random] CmdData 0
execute as @e[type=bee,limit=1,scores={CmdData=0..}] at @s store result score @s CmdData if entity @e[type=bee]
execute as @e[type=bee,limit=1,scores={CmdData=100..}] at @s run function rr_powerups:everytick/kill_bees
scoreboard players reset @e[type=bee] CmdData