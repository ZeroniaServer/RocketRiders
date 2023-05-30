##Kills excessive TNT minecarts for lag reduction purposes (sorry Robo)
scoreboard players add @e[predicate=custom:indimension,type=tnt_minecart,limit=1,sort=random] CmdData 0
execute as @e[predicate=custom:indimension,type=tnt_minecart,limit=1,scores={CmdData=0..}] at @s store result score @s CmdData if entity @e[predicate=custom:indimension,type=tnt_minecart]
execute as @e[predicate=custom:indimension,type=tnt_minecart,limit=1,scores={CmdData=100..}] at @s run function everytick:kill_carts
scoreboard players reset @e[predicate=custom:indimension,type=tnt_minecart] CmdData