## Gives appropriate sabers for the end of the game (losers lose sharpness)
execute if entity @s[tag=BothWon] as @a[x=0,team=Yellow] run function game:saberyellow
execute if entity @s[tag=BothWon] as @a[x=0,team=Blue] unless entity @e[x=0,type=armor_stand,tag=chaseEnabled] run function game:saberblue
execute if entity @s[tag=YellowWon] as @a[x=0,team=Yellow] run function game:saberyellow
execute if entity @s[tag=YellowWon] as @a[x=0,team=Blue] run loot give @s loot items:misc/shooting_saber_end
execute if entity @s[tag=BlueWon] as @a[x=0,team=Blue] unless entity @e[x=0,type=armor_stand,tag=chaseEnabled] run function game:saberblue
execute if entity @s[tag=BlueWon] as @a[x=0,team=Yellow] run loot give @s loot items:misc/shooting_saber_end