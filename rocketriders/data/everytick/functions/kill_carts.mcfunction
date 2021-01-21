##Recursively kills TNT carts
kill @e[type=tnt_minecart,limit=4,sort=random]
execute store result score @s CmdData if entity @e[type=tnt_minecart]
execute if score @s CmdData matches 100.. run function everytick:kill_carts