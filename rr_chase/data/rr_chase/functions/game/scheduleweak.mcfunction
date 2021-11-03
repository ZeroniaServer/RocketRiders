clear @a[team=Blue,tag=Loser] bow
give @a[team=Blue,tag=Loser] bow{display:{Name:'{"translate":"Shooting Saber","color":"blue","bold":true,"italic":false}',Lore:['{"translate":"A weapon used for both"}','{"translate":"ranged and melee attacks"}']},HideFlags:4,Unbreakable:1b,Enchantments:[{id:"flame",lvl:1}]}
execute as @a[team=Blue,tag=Loser] run effect give @s weakness 13 100 true