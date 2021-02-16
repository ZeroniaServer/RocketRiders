##Performs a recursive scan from the Blue portals to the outer edge of the base for any air blocks
##Necessary for the Deus Ex Machina achievement

execute if score @s Machina matches ..21 at @s if block ~ ~ ~ #custom:air run scoreboard players add @s Machina 1
execute if score @s Machina matches ..21 at @s if block ~ ~ ~ #custom:air run tp @s ~ ~ ~1

execute if score @s Machina matches 22 at @s run tag @a[team=Blue] add DeusExMachina
execute if score @s Machina matches 22 run kill @s

execute at @s unless block ~ ~ ~ #custom:air run scoreboard players set @s Machina 0
execute at @s unless block ~ ~ ~ #custom:air run tp @s ~-1 ~ -73
execute at @s if entity @s[x=-9,dx=0] run tp @s 33 ~-1 -73
execute at @s if entity @s[y=37,dy=0] run kill @s

execute at @s unless entity @s[x=-9,dx=0] unless entity @s[y=37,dy=0] if score @s Machina matches ..21 run function achievements:machinacheckblue