## Gives appropriate sabers for the end of the game (losers lose sharpness)
execute if entity @s[tag=BothWon] as @a[team=Yellow] run function game:saberyellow
execute if entity @s[tag=BothWon] as @a[team=Blue] run function game:saberblue
execute if entity @s[tag=YellowWon] as @a[team=Yellow] run function game:saberyellow
execute if entity @s[tag=YellowWon] run give @a[team=Blue] bow{display:{Name:'{"translate":"Shooting Saber","color":"gold","bold":true,"italic":false}',Lore:['{"translate":"A weapon used for both"}','{"translate":"ranged and melee attacks"}']},HideFlags:4,Unbreakable:1b,Enchantments:[{id:"flame",lvl:1}]}
execute if entity @s[tag=BlueWon] as @a[team=Blue] run function game:saberblue
execute if entity @s[tag=BlueWon] run give @a[team=Yellow] bow{display:{Name:'{"translate":"Shooting Saber","color":"blue","bold":true,"italic":false}',Lore:['{"translate":"A weapon used for both"}','{"translate":"ranged and melee attacks"}']},HideFlags:4,Unbreakable:1b,Enchantments:[{id:"flame",lvl:1}]}