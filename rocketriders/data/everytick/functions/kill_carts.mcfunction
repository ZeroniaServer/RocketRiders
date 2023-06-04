##Recursively kills TNT carts
kill @e[x=0,type=tnt_minecart,limit=4,sort=random]
execute store result score @s CmdData if entity @e[x=0,type=tnt_minecart]
execute if score @s CmdData matches 100.. run function everytick:kill_carts