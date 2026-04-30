##Sub-sub-RNG for Special Missiles (used for Special Treatment modifier)
#Choose between each missile based on Tetris state (no enabled status)
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenBroad] run summon marker 0 0 0 {Tags:["rngBroad","rng3"],CustomName:"rngBroad (Broadsword)"}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenBull] run summon marker 0 0 0 {Tags:["rngBull","rng3"],CustomName:"rngBull (Bullet)"}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenDuplex] run summon marker 0 0 0 {Tags:["rngDuplex","rng3"],CustomName:"rngDuplex (Duplex)"}
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenHyper] run summon marker 0 0 0 {Tags:["rngHyper","rng3"],CustomName:"rngHyper (Hypersonic)"}

#Select a missile and run appropriate give function
tag @e[x=0,type=marker,tag=rng3,sort=random,limit=1] add rngSelected
execute if predicate game:game_rules/show_debug_logs/on run function custom:log {message:["(items:item/missile/rng) Selected: ",{selector:"@e[limit=1,x=0,type=marker,tag=rng3,tag=rngSelected]"}]}

#> Kill items to prevent duplication glitches
execute unless predicate game:game_rules/item_stacking/on as @e[x=0,type=marker,tag=rngSelected,tag=rngBroad] as @e[x=0,type=item] if items entity @s contents *[custom_data~{id:"missile/broadsword"}] run function items:deduct
execute unless predicate game:game_rules/item_stacking/on as @e[x=0,type=marker,tag=rngSelected,tag=rngBull] as @e[x=0,type=item] if items entity @s contents *[custom_data~{id:"missile/bullet"}] run function items:deduct
execute unless predicate game:game_rules/item_stacking/on as @e[x=0,type=marker,tag=rngSelected,tag=rngDuplex] as @e[x=0,type=item] if items entity @s contents *[custom_data~{id:"missile/duplex"}] run function items:deduct
execute unless predicate game:game_rules/item_stacking/on as @e[x=0,type=marker,tag=rngSelected,tag=rngHyper] as @e[x=0,type=item] if items entity @s contents *[custom_data~{id:"missile/hypersonic"}] run function items:deduct

function items:full_hotbar

execute as @e[x=0,type=marker,tag=rngSelected,tag=rngBroad] as @a[x=0,tag=getItem,predicate=custom:team/any_playing_team] run function items:item/missile/givebroad
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngBull] as @a[x=0,tag=getItem,predicate=custom:team/any_playing_team] run function items:item/missile/givebull
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngDuplex] as @a[x=0,tag=getItem,predicate=custom:team/any_playing_team] run function items:item/missile/giveduplex
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngHyper] as @a[x=0,tag=getItem,predicate=custom:team/any_playing_team] run function items:item/missile/givehyper
kill @e[x=0,type=marker,tag=rng3]