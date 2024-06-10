##Recursively kills bees
kill @e[x=0,type=bee,limit=4,sort=random]
execute store result score @s CmdData if entity @e[x=0,type=bee]
execute if score @s CmdData matches 100.. run function rr_powerups:everytick/kill_bees