##Performs a recursive scan from the Yellow portals to the outer edge of the base for any air blocks
##Necessary for the Deus Ex Machina achievement
execute if score @s Machina matches ..21 at @s if block ~ ~ ~ #custom:air run scoreboard players add @s Machina 1
execute if score @s Machina matches ..21 at @s if block ~ ~ ~ #custom:air run tp @s ~ ~ ~-1

execute if score @s Machina matches 22 at @s run tag @a[predicate=custom:indimension,team=Yellow] add DeusExMachina
execute if score @s Machina matches 22 run kill @s

execute at @s unless block ~ ~ ~ #custom:air run scoreboard players set @s Machina 0
execute at @s unless block ~ ~ ~ #custom:air run tp @s ~-1 ~ 73
tp @s[predicate=custom:machina_x] 33 ~-1 73
kill @s[predicate=custom:machina_y]

execute at @s[predicate=!custom:machina_x,predicate=!custom:machina_y] if score @s Machina matches ..21 run function achievements:machinacheckyellow