##Gives executor a Spell Book
#Title/giving
title @s[tag=!fullHotbar] actionbar {"text":"Spell Book obtained.","color":"aqua"}
loot give @s[tag=!fullHotbar] loot items:item/spell_book
execute at @s run playsound minecraft:entity.item.pickup player @s[tag=!fullHotbar] ~ ~ ~ 0.25 2

#Game tracking
tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=tetrisTime] add givenSpellBook