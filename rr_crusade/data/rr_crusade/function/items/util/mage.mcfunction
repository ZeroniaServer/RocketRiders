##Sub-RNG for Mage Utility Items
#Choose between each item based on Tetris state
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenSpellBook] run summon marker 0 0 0 {Tags:["rngSpellBook","crusadeRNG"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenVortex] run summon marker 0 0 0 {Tags:["rngVortex","crusadeRNG"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenNova] run summon marker 0 0 0 {Tags:["rngNova","crusadeRNG"]}

#Select item and run appropriate give function
tag @e[x=0,type=marker,tag=crusadeRNG,sort=random,limit=1] add rngSelected

function items:full_hotbar

execute as @e[x=0,type=marker,tag=rngSelected,tag=rngSpellBook] as @a[x=0,scores={crusadekit=3},tag=getItem,predicate=custom:on_blue_or_yellow_team] run function rr_crusade:items/util/givespellbook
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngVortex] as @a[x=0,scores={crusadekit=3},tag=getItem,predicate=custom:on_blue_or_yellow_team] run function items:util/givevortex
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngNova] as @a[x=0,scores={crusadekit=3},tag=getItem,predicate=custom:on_blue_or_yellow_team] run function items:util/givenova
kill @e[x=0,type=marker,tag=crusadeRNG]