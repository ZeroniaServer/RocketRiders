##Gives any players who join Yellow team a Shooting Saber (and arrows if in the Waiting Area)
replaceitem entity @a[tag=JoinYellow] hotbar.0 minecraft:bow{display:{Name:'{"translate":"Shooting Saber","color":"yellow","bold":true,"italic":false}',Lore:['{"translate":"A weapon used for both ranged and melee attacks"}']},HideFlags:4,Unbreakable:1b,Enchantments:[{id:flame,lvl:1},{id:sharpness,lvl:5}]}
execute if entity @s[tag=!GameStarted,scores={count=..599}] run replaceitem entity @a[tag=JoinYellow] weapon.offhand arrow{display:{Name:"{\"text\":\"Arrow\",\"color\":\"light_purple\",\"italic\":\"true\",\"bold\":\"true\"}"},Lobby:1b} 20