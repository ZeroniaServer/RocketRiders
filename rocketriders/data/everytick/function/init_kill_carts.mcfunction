##Kills excessive TNT minecarts for lag reduction purposes (sorry Robo)
execute store result score #num_carts var if entity @e[x=0,type=tnt_minecart]
execute if score #num_carts var matches 100.. run function everytick:kill_carts