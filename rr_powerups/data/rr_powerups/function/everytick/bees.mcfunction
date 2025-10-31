#Bees teams/angry
execute as @e[x=0,type=bee,tag=!beeChecked,tag=BlueBee] run team join Blue
execute as @e[x=0,type=bee,tag=!beeChecked,tag=YellowBee] run team join Yellow
execute as @e[x=0,type=bee,tag=!beeChecked] run attribute @s minecraft:follow_range base set 100
execute as @e[x=0,type=bee,tag=!beeChecked] run data remove entity @s AngryAt
tag @e[x=0,type=bee,tag=!beeChecked] add beeChecked

scoreboard players set @e[x=0,type=bee] CmdData 0
execute as @e[x=0,type=bee,predicate=custom:team/blue] store success score @s CmdData on target if entity @s[predicate=custom:team/yellow]
execute as @e[x=0,type=bee,predicate=custom:team/yellow] store success score @s CmdData on target if entity @s[predicate=custom:team/blue]
execute as @e[x=0,type=bee,scores={CmdData=0}] run data remove entity @s AngryAt
execute as @e[x=0,type=bee,predicate=custom:team/blue,scores={CmdData=0}] run damage @s 0.00001 arrow by @p[predicate=custom:indimension,predicate=custom:team/yellow]
execute as @e[x=0,type=bee,predicate=custom:team/yellow,scores={CmdData=0}] run damage @s 0.00001 arrow by @p[predicate=custom:indimension,predicate=custom:team/blue]

execute as @e[x=0,type=bee,predicate=custom:bee_anger_periodic_tick] run data merge entity @s {AngerTime:1000}

#kill bees that have stung
kill @e[x=0,type=bee,nbt={HasStung:1b}]

#kill bees that are in the void
execute as @e[x=0,type=bee,predicate=rr_powerups:bee_void] run function custom:kill_mob_discretely
