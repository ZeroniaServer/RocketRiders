##Sub-RNG for Knight Utility Items
#Choose between each item based on Tetris state
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenObshield] run summon marker 0 0 0 {Tags:["rngObshield","crusadeRNG"],CustomName:"rngObshield (Nova Rocket)"}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenShield] run summon marker 0 0 0 {Tags:["rngShield","crusadeRNG"],CustomName:"rngShield (Shield)"}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenICBM] run summon marker 0 0 0 {Tags:["rngICBM","crusadeRNG"],CustomName:"rngICBM (I.C.B.M.)"}

#Select item and run appropriate give function
tag @e[x=0,type=marker,tag=crusadeRNG,sort=random,limit=1] add rngSelected

execute if predicate game:game_rules/show_debug_logs/on run function custom:log {message:["(rr_crusade:items/util/knight) Selected: ",{selector:"@e[limit=1,x=0,type=marker,tag=crusadeRNG,tag=rngSelected]"}]}
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngObshield] as @a[x=0,predicate=rr_crusade:kit/knight,tag=getItem,predicate=custom:team/any_playing_team] run function items:give_batch/obsidian_shield
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngShield] as @a[x=0,predicate=rr_crusade:kit/knight,tag=getItem,predicate=custom:team/any_playing_team] run function items:give_batch/shield
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngICBM] as @a[x=0,predicate=rr_crusade:kit/knight,tag=getItem,predicate=custom:team/any_playing_team] run function items:give_batch/icbm
kill @e[x=0,type=marker,tag=crusadeRNG]