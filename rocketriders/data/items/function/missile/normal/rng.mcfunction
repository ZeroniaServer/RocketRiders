##Sub-sub-RNG for Normal Missiles
#Choose between each missile based on enabled status and Tetris state
execute if predicate game:item_pool/missile/ant if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenAnt] run summon marker 0 0 0 {Tags:["rngAnt","rng3"]}
execute if predicate game:item_pool/missile/lifter if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenLift] run summon marker 0 0 0 {Tags:["rngLift","rng3"]}
execute if predicate game:item_pool/missile/blade if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenBlade] run summon marker 0 0 0 {Tags:["rngBlade","rng3"]}
execute if predicate game:item_pool/missile/catapult if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenCata] run summon marker 0 0 0 {Tags:["rngCata","rng3"]}
execute if predicate game:item_pool/missile/elder_guardian if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenGuard] run summon marker 0 0 0 {Tags:["rngEguard","rng3"]}
execute if predicate game:item_pool/missile/chronullifier if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenNull] run summon marker 0 0 0 {Tags:["rngNull","rng3"]}
execute if predicate game:item_pool/missile/slasher if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenSlash] run summon marker 0 0 0 {Tags:["rngSlash","rng3"]}
execute if predicate game:item_pool/missile/tomatwo if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenToma] run summon marker 0 0 0 {Tags:["rngToma","rng3"]}
execute if predicate game:item_pool/missile/citadel if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenCita] run summon marker 0 0 0 {Tags:["rngCitadel","rng3"]}
execute if predicate game:item_pool/missile/gemini if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenGemi] run summon marker 0 0 0 {Tags:["rngGemi","rng3"]}

#Select a missile and run appropriate give function
tag @e[x=0,type=marker,tag=rng3,sort=random,limit=1] add rngSelected

#> Kill items to prevent duplication glitches
execute unless predicate game:game_rules/item_stacking/on as @e[x=0,type=marker,tag=rngSelected,tag=rngAnt] as @e[x=0,type=item] if items entity @s contents *[custom_data~{id:"missile/ant"}] run function items:deduct
execute unless predicate game:game_rules/item_stacking/on as @e[x=0,type=marker,tag=rngSelected,tag=rngLift] as @e[x=0,type=item] if items entity @s contents *[custom_data~{id:"missile/lifter"}] run function items:deduct
execute unless predicate game:game_rules/item_stacking/on as @e[x=0,type=marker,tag=rngSelected,tag=rngBlade] as @e[x=0,type=item] if items entity @s contents *[custom_data~{id:"missile/blade"}] run function items:deduct
execute unless predicate game:game_rules/item_stacking/on as @e[x=0,type=marker,tag=rngSelected,tag=rngCata] as @e[x=0,type=item] if items entity @s contents *[custom_data~{id:"missile/catapult"}] run function items:deduct
execute unless predicate game:game_rules/item_stacking/on as @e[x=0,type=marker,tag=rngSelected,tag=rngEguard] as @e[x=0,type=item] if items entity @s contents *[custom_data~{id:"missile/elder_guardian"}] run function items:deduct
execute unless predicate game:game_rules/item_stacking/on as @e[x=0,type=marker,tag=rngSelected,tag=rngNull] as @e[x=0,type=item] if items entity @s contents *[custom_data~{id:"missile/chronullifier"}] run function items:deduct
execute unless predicate game:game_rules/item_stacking/on as @e[x=0,type=marker,tag=rngSelected,tag=rngSlash] as @e[x=0,type=item] if items entity @s contents *[custom_data~{id:"missile/slasher"}] run function items:deduct
execute unless predicate game:game_rules/item_stacking/on as @e[x=0,type=marker,tag=rngSelected,tag=rngToma] as @e[x=0,type=item] if items entity @s contents *[custom_data~{id:"missile/tomatwo"}] run function items:deduct
execute unless predicate game:game_rules/item_stacking/on as @e[x=0,type=marker,tag=rngSelected,tag=rngCitadel] as @e[x=0,type=item] if items entity @s contents *[custom_data~{id:"missile/citadel"}] run function items:deduct
execute unless predicate game:game_rules/item_stacking/on as @e[x=0,type=marker,tag=rngSelected,tag=rngGemi] as @e[x=0,type=item] if items entity @s contents *[custom_data~{id:"missile/gemini"}] run function items:deduct

function items:full_hotbar

execute as @e[x=0,type=marker,tag=rngSelected,tag=rngAnt] as @a[x=0,tag=getItem,predicate=custom:team/any_playing_team] run function items:missile/normal/giveant
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngLift] as @a[x=0,tag=getItem,predicate=custom:team/any_playing_team] run function items:missile/normal/givelift
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngBlade] as @a[x=0,tag=getItem,predicate=custom:team/any_playing_team] run function items:missile/normal/giveblade
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngCata] as @a[x=0,tag=getItem,predicate=custom:team/any_playing_team] run function items:missile/normal/givecata
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngEguard] as @a[x=0,tag=getItem,predicate=custom:team/any_playing_team] run function items:missile/normal/giveeguard
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngNull] as @a[x=0,tag=getItem,predicate=custom:team/any_playing_team] run function items:missile/normal/givenull
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngSlash] as @a[x=0,tag=getItem,predicate=custom:team/any_playing_team] run function items:missile/normal/giveslash
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngToma] as @a[x=0,tag=getItem,predicate=custom:team/any_playing_team] run function items:missile/normal/givetoma
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngCitadel] as @a[x=0,tag=getItem,predicate=custom:team/any_playing_team] run function items:missile/normal/givecitadel
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngGemi] as @a[x=0,tag=getItem,predicate=custom:team/any_playing_team] run function items:missile/normal/givegemi
kill @e[x=0,type=marker,tag=rng3]