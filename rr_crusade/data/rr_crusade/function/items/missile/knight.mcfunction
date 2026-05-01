##Sub-sub-RNG for Knight Missiles
#Choose between each missile based on Tetris state
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenGemi] run summon marker 0 0 0 {Tags:["rngGemi","crusadeRNG"],CustomName:"rngGemi (Gemini)"}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenJbust] run summon marker 0 0 0 {Tags:["rngJbuster","crusadeRNG"],CustomName:"rngJbuster (Juggerbuster)"}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenWar] run summon marker 0 0 0 {Tags:["rngWar","crusadeRNG"],CustomName:"rngWar (Warhead)"}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenAux] run summon marker 0 0 0 {Tags:["rngAux","crusadeRNG"],CustomName:"rngAux (Auxiliary)"}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenBlade] run summon marker 0 0 0 {Tags:["rngBlade","crusadeRNG"],CustomName:"rngBlade (Blade)"}

#Select a missile and run appropriate give function
tag @e[x=0,type=marker,tag=crusadeRNG,sort=random,limit=1] add rngSelected
execute if predicate game:game_rules/show_debug_logs/on run function custom:log {message:["(rr_crusade:items/missile/knight) Selected: ",{selector:"@e[limit=1,x=0,type=marker,tag=crusadeRNG,tag=rngSelected]"}]}

execute as @e[x=0,type=marker,tag=rngSelected,tag=rngGemi] as @a[x=0,predicate=rr_crusade:kit/knight,tag=getItem,predicate=custom:team/any_playing_team] run function items:give/missile/gemini
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngJbuster] as @a[x=0,predicate=rr_crusade:kit/knight,tag=getItem,predicate=custom:team/any_playing_team] run function items:give/missile/juggerbuster
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngWar] as @a[x=0,predicate=rr_crusade:kit/knight,tag=getItem,predicate=custom:team/any_playing_team] run function items:give/missile/warhead
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngAux] as @a[x=0,predicate=rr_crusade:kit/knight,tag=getItem,predicate=custom:team/any_playing_team] run function items:give/missile/auxiliary
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngBlade] as @a[x=0,predicate=rr_crusade:kit/knight,tag=getItem,predicate=custom:team/any_playing_team] run function items:give/missile/blade
kill @e[x=0,type=marker,tag=crusadeRNG]