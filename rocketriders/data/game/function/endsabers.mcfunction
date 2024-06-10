## Gives appropriate sabers for the end of the game (losers lose sharpness)
execute if entity @s[tag=BothWon] as @a[x=0,team=Yellow] run function game:saberyellow
execute if entity @s[tag=BothWon] as @a[x=0,team=Blue] unless entity @e[x=0,type=armor_stand,tag=chaseEnabled] run function game:saberblue
execute if entity @s[tag=YellowWon] as @a[x=0,team=Yellow] run function game:saberyellow
execute if entity @s[tag=YellowWon] run give @a[x=0,team=Blue] minecraft:bow[custom_name='{"translate":"Shooting Saber","color":"blue","bold":true,"italic":false}',lore=['{"translate":"A weapon used for both"}','{"translate":"ranged and melee attacks"}'],unbreakable={show_in_tooltip:0b},enchantments={flame:1}]
execute if entity @s[tag=BlueWon] as @a[x=0,team=Blue] unless entity @e[x=0,type=armor_stand,tag=chaseEnabled] run function game:saberblue
execute if entity @s[tag=BlueWon] run give @a[x=0,team=Yellow] minecraft:bow[custom_name='{"translate":"Shooting Saber","color":"gold","bold":true,"italic":false}',lore=['{"translate":"A weapon used for both"}','{"translate":"ranged and melee attacks"}'],unbreakable={show_in_tooltip:0b},enchantments={flame:1}]