execute as @a unless entity @s[team=!Blue,team=!Yellow] run clear @s #rr_powerups:clear
clear @a[team=Yellow] elytra
item replace entity @a[team=Yellow] armor.chest with leather_chestplate{display: {Name: '[{"text":"Yellow Chestplate","color":"yellow","bold":true,"italic":false}]', color: 16768000}, HideFlags: 7, Unbreakable: 1, Enchantments: [{id: "binding_curse", lvl: 1}]}
function game:winblue