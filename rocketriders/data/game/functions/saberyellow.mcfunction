replaceitem entity @a[tag=JoinYellow] hotbar.0 minecraft:bow{display:{Name:'{"translate":"Shooting Saber","color":"yellow","bold":true,"italic":false}',Lore:['{"translate":"A weapon used for both ranged and melee attacks"}']},HideFlags:7,Unbreakable:1b,Enchantments:[{id:flame,lvl:1},{id:sharpness,lvl:5}]}
execute as @e[tag=Selection] if entity @s[tag=!GameStarted] run give @a[tag=JoinYellow] arrow 20