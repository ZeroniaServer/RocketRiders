##Sub-sub-RNG for Mage Missiles
#Choose between each missile based on Tetris state
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenAnt] run summon marker 0 0 0 {Tags:["rngAnt","crusadeRNG"],CustomName:"rngAnt (A.N.T.)"}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenToma] run summon marker 0 0 0 {Tags:["rngToma","crusadeRNG"],CustomName:"rngToma (TomaTwo)"}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenCata] run summon marker 0 0 0 {Tags:["rngCata","crusadeRNG"],CustomName:"rngCata (Catapult)"}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenLift] run summon marker 0 0 0 {Tags:["rngLift","crusadeRNG"],CustomName:"rngLift (Lifter)"}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenNull] run summon marker 0 0 0 {Tags:["rngNull","crusadeRNG"],CustomName:"rngNull (Chronullifier)"}

#Select a missile and run appropriate give function
tag @e[x=0,type=marker,tag=crusadeRNG,sort=random,limit=1] add rngSelected
execute if predicate game:game_rules/show_debug_logs/on run function custom:log {message:["(rr_crusade:items/missile/mage) Selected: ",{selector:"@e[limit=1,x=0,type=marker,tag=crusadeRNG,tag=rngSelected]"}]}

function items:full_hotbar

execute as @e[x=0,type=marker,tag=rngSelected,tag=rngAnt] as @a[x=0,predicate=rr_crusade:kit/mage,tag=getItem,predicate=custom:team/any_playing_team] run function items:item/missile/giveant
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngToma] as @a[x=0,predicate=rr_crusade:kit/mage,tag=getItem,predicate=custom:team/any_playing_team] run function items:item/missile/givetoma
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngCata] as @a[x=0,predicate=rr_crusade:kit/mage,tag=getItem,predicate=custom:team/any_playing_team] run function items:item/missile/givecata
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngLift] as @a[x=0,predicate=rr_crusade:kit/mage,tag=getItem,predicate=custom:team/any_playing_team] run function items:item/missile/givelift
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngNull] as @a[x=0,predicate=rr_crusade:kit/mage,tag=getItem,predicate=custom:team/any_playing_team] run function items:item/missile/givenull
kill @e[x=0,type=marker,tag=crusadeRNG]