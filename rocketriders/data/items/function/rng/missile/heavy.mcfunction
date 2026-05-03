##Sub-sub-RNG for Heavy Missiles
#Choose between each missile based on enabled status and Tetris state
execute if predicate game:item_pool/missile/auxiliary if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenAux] run summon marker 0 0 0 {Tags:["rngAux","rng3"],CustomName:"rngAux (Auxiliary)"}
execute if predicate game:item_pool/missile/rifter if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenRift] run summon marker 0 0 0 {Tags:["rngRift","rng3"],CustomName:"rngRift (Rifter)"}
execute if predicate game:item_pool/missile/juggerbuster if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenJbust] run summon marker 0 0 0 {Tags:["rngJbuster","rng3"],CustomName:"rngJbuster (Juggerbuster)"}
execute if predicate game:item_pool/missile/warhead if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenWar] run summon marker 0 0 0 {Tags:["rngWar","rng3"],CustomName:"rngWar (Warhead)"}

#Select a missile and run appropriate give function
tag @e[x=0,type=marker,tag=rng3,sort=random,limit=1] add rngSelected
execute if predicate game:game_rules/show_debug_logs/on run function custom:log {message:["(items:rng/missile/heavy) Selected: ",{selector:"@e[limit=1,x=0,type=marker,tag=rng3,tag=rngSelected]"}]}

execute as @e[x=0,type=marker,tag=rngSelected,tag=rngAux] as @a[x=0,tag=getItem,predicate=custom:team/any_playing_team] run function items:give_batch/missile/auxiliary
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngRift] as @a[x=0,tag=getItem,predicate=custom:team/any_playing_team] run function items:give_batch/missile/rifter
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngJbuster] as @a[x=0,tag=getItem,predicate=custom:team/any_playing_team] run function items:give_batch/missile/juggerbuster
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngWar] as @a[x=0,tag=getItem,predicate=custom:team/any_playing_team] run function items:give_batch/missile/warhead
kill @e[x=0,type=marker,tag=rng3]