replaceitem entity @a[tag=JoinBlue] hotbar.0 minecraft:bow{display:{Name:'{"translate":"Shooting Saber","color":"blue","bold":true,"italic":false}',Lore:['{"translate":"A weapon used for both ranged and melee attacks"}']},HideFlags:4,Unbreakable:1b,Enchantments:[{id:flame,lvl:1},{id:sharpness,lvl:5}]}
execute as @e[tag=Selection] if entity @s[tag=!GameStarted,scores={count=..599}] run give @a[tag=JoinBlue] arrow{display:{Name:"{\"text\":\"Arrow\",\"color\":\"light_purple\",\"italic\":\"true\",\"bold\":\"true\"}"},Lobby:1b} 20