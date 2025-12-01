##Sub-sub-RNG for Lightning Missiles
#Choose between each missile based on enabled status and Tetris state
execute if predicate game:item_pool/missile/hurricane if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenHur] run summon marker 0 0 0 {Tags:["rngHur","rng3"]}
execute if predicate game:item_pool/missile/thunderbolt if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenBolt] run summon marker 0 0 0 {Tags:["rngThun","rng3"]}

#Select a missile and run appropriate give function
tag @e[x=0,type=marker,tag=rng3,sort=random,limit=1] add rngSelected

#> Kill items to prevent duplication glitches
execute unless predicate game:game_rules/item_stacking/on as @e[x=0,type=marker,tag=rngSelected,tag=rngHur] as @e[x=0,type=item] if items entity @s contents *[custom_data~{id:"missile/hurricane"}] run function items:deduct
execute unless predicate game:game_rules/item_stacking/on as @e[x=0,type=marker,tag=rngSelected,tag=rngThun] as @e[x=0,type=item] if items entity @s contents *[custom_data~{id:"missile/thunderbolt"}] run function items:deduct

function items:full_hotbar

execute as @e[x=0,type=marker,tag=rngSelected,tag=rngHur] as @a[x=0,tag=getItem,predicate=custom:team/any_playing_team] run function items:missile/lightning/givehur
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngThun] as @a[x=0,tag=getItem,predicate=custom:team/any_playing_team] run function items:missile/lightning/givethun
kill @e[x=0,type=marker,tag=rng3]