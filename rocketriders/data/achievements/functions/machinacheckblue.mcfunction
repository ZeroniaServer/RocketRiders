##Performs a recursive scan through the entire Blue base for any air blocks
##Necessary for the Deus Ex Machina achievement

execute if score @s Machina matches ..14 at @s if block ~ ~ ~ air run scoreboard players add @s Machina 1
execute if score @s Machina matches ..14 at @s if block ~ ~ ~ air run tp @s ~ ~ ~1

execute if score @s Machina matches 15 at @s run advancement grant @a[team=Blue] only achievements:rr_challenges/machina
execute if score @s Machina matches 15 run kill @s

execute at @s unless block ~ ~ ~ air run scoreboard players set @s Machina 0
execute at @s unless block ~ ~ ~ air run tp @s ~-1 ~ -66
execute at @s if entity @s[x=-15,dx=0] run tp @s 38 ~-1 -66
execute at @s if entity @s[y=33,dy=0] run kill @s

execute at @s unless entity @s[x=-15,dx=0] unless entity @s[y=33,dy=0] if score @s Machina matches ..14 run function achievements:machinacheckblue