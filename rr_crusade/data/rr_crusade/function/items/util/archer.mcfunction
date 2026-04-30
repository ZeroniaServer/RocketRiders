##Sub-RNG for Archer Utility Items
#Choose between each item based on Tetris state
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenArrows] run summon marker 0 0 0 {Tags:["rngArrows","crusadeRNG"],CustomName:"rngArrows (Arrow)"}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenCanopy] run summon marker 0 0 0 {Tags:["rngCanopy","crusadeRNG"],CustomName:"rngCanopy (Canopy)"}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenSplash] run summon marker 0 0 0 {Tags:["rngSplash","crusadeRNG"],CustomName:"rngSplash (Splash)"}

#Select item and run appropriate give function
tag @e[x=0,type=marker,tag=crusadeRNG,sort=random,limit=1] add rngSelected

function items:full_hotbar

execute if predicate game:game_rules/show_debug_logs/on run function custom:log {message:["(rr_crusade:items/util/archer) Selected: ",{selector:"@e[limit=1,type=marker,tag=rngSelected]"}]}
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngArrows] as @a[x=0,predicate=rr_crusade:kit/archer,tag=getItem,predicate=custom:team/any_playing_team] run function items:util/givearrows
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngCanopy] as @a[x=0,predicate=rr_crusade:kit/archer,tag=getItem,predicate=custom:team/any_playing_team] run function items:util/givecanopy
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngSplash] as @a[x=0,predicate=rr_crusade:kit/archer,tag=getItem,predicate=custom:team/any_playing_team] run function items:util/givesplash
kill @e[x=0,type=marker,tag=crusadeRNG]