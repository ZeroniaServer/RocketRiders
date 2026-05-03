##Sub-RNG for Mage Utility Items
#Choose between each item based on Tetris state
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenSpellBook] run summon marker 0 0 0 {Tags:["rngSpellBook","crusadeRNG"],CustomName:"rngSpellBook (Spell Book)"}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenVortex] run summon marker 0 0 0 {Tags:["rngVortex","crusadeRNG"],CustomName:"rngVortex (Vortex)"}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenNova] run summon marker 0 0 0 {Tags:["rngNova","crusadeRNG"],CustomName:"rngNova (Nova Rocket)"}

#Select item and run appropriate give function
tag @e[x=0,type=marker,tag=crusadeRNG,sort=random,limit=1] add rngSelected

execute if predicate game:game_rules/show_debug_logs/on run function custom:log {message:["(rr_crusade:items/util/mage) Selected: ",{selector:"@e[limit=1,x=0,type=marker,tag=crusadeRNG,tag=rngSelected]"}]}
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngSpellBook] as @a[x=0,predicate=rr_crusade:kit/mage,tag=getItem,predicate=custom:team/any_playing_team] run function items:give_batch/spell_book
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngVortex] as @a[x=0,predicate=rr_crusade:kit/mage,tag=getItem,predicate=custom:team/any_playing_team] run function items:give_batch/vortex
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngNova] as @a[x=0,predicate=rr_crusade:kit/mage,tag=getItem,predicate=custom:team/any_playing_team] run function items:give_batch/nova_rocket
kill @e[x=0,type=marker,tag=crusadeRNG]