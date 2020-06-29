execute as @a unless entity @s[team=!Blue,team=!Yellow] run clear @s #rr_powerups:clear
clear @a[team=Blue] elytra
replaceitem entity @a[team=Blue] armor.chest leather_chestplate{display:{Name:'[{"text":"Blue Chestplate","color":"blue","bold":true,"italic":false}]',color:1247871},HideFlags:39,Unbreakable:1,Enchantments:[{id:binding_curse,lvl:1}]}
function game:winyellow