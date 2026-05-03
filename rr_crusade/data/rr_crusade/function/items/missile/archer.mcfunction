##Sub-sub-RNG for Archer Missiles
#Choose between each missile based on Tetris state
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenCita] run summon marker 0 0 0 {Tags:["rngCitadel","crusadeRNG"],CustomName:"rngCitadel (Citadel)"}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenSlash] run summon marker 0 0 0 {Tags:["rngSlash","crusadeRNG"],CustomName:"rngSlash (Slasher)"}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenBolt] run summon marker 0 0 0 {Tags:["rngThun","crusadeRNG"],CustomName:"rngThun (Thunderbolt)"}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenHur] run summon marker 0 0 0 {Tags:["rngHur","crusadeRNG"],CustomName:"rngHur (Hurricane)"}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenBroad] run summon marker 0 0 0 {Tags:["rngBroad","crusadeRNG"],CustomName:"rngBroad (Broadsword)"}

#Select a missile and run appropriate give function
tag @e[x=0,type=marker,tag=crusadeRNG,sort=random,limit=1] add rngSelected
execute if predicate game:game_rules/show_debug_logs/on run function custom:log {message:["(rr_crusade:items/missile/archer) Selected: ",{selector:"@e[limit=1,x=0,type=marker,tag=crusadeRNG,tag=rngSelected]"}]}

execute as @e[x=0,type=marker,tag=rngSelected,tag=rngCitadel] as @a[x=0,predicate=rr_crusade:kit/archer,tag=getItem,predicate=custom:team/any_playing_team] run function items:give_batch/missile/citadel
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngSlash] as @a[x=0,predicate=rr_crusade:kit/archer,tag=getItem,predicate=custom:team/any_playing_team] run function items:give_batch/missile/slasher
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngThun] as @a[x=0,predicate=rr_crusade:kit/archer,tag=getItem,predicate=custom:team/any_playing_team] run function items:give_batch/missile/thunderbolt
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngHur] as @a[x=0,predicate=rr_crusade:kit/archer,tag=getItem,predicate=custom:team/any_playing_team] run function items:give_batch/missile/hurricane
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngBroad] as @a[x=0,predicate=rr_crusade:kit/archer,tag=getItem,predicate=custom:team/any_playing_team] run function items:give_batch/missile/broadsword
kill @e[x=0,type=marker,tag=crusadeRNG]