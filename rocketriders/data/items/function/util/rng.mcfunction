##Sub-RNG for Utility Items
#Choose between each item based on enabled status and Tetris state
execute if predicate game:item_pool/arrow if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenArrowsTwice] run summon marker 0 0 0 {Tags:["rngArrows","rng2"],CustomName:"rngArrows (Arrow)"}
execute if predicate game:item_pool/fireball if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenFireballTwice] run summon marker 0 0 0 {Tags:["rngFireball","rng2"],CustomName:"rngFireball (Fireball)"}
execute if predicate game:item_pool/obsidian_shield if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenObshield] run summon marker 0 0 0 {Tags:["rngObshield","rng2"],CustomName:"rngObshield (Obsidian Shield)"}
execute if predicate game:item_pool/canopy if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenCanopy] run summon marker 0 0 0 {Tags:["rngCanopy","rng2"],CustomName:"rngCanopy (Canopy)"}
execute if predicate game:item_pool/shield if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenShieldTwice] run summon marker 0 0 0 {Tags:["rngShield","rng2"],CustomName:"rngShield (Shield)"}
execute if predicate game:item_pool/splash if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenSplash] run summon marker 0 0 0 {Tags:["rngSplash","rng2"],CustomName:"rngSplash (Splash)"}
execute if predicate game:item_pool/vortex if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenVortex] run summon marker 0 0 0 {Tags:["rngVortex","rng2"],CustomName:"rngVortex (Vortex)"}
execute if predicate game:item_pool/nova_rocket if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!givenNova] run summon marker 0 0 0 {Tags:["rngNova","rng2"],CustomName:"rngNova (Nova Rocket)"}

#Select item and run appropriate give function
tag @e[x=0,type=marker,tag=rng2,sort=random,limit=1] add rngSelected
execute if predicate game:game_rules/show_debug_logs/on run function custom:log {message:["(items:missile/util/rng) Selected: ",{selector:"@e[limit=1,x=0,type=marker,tag=rng2,tag=rngSelected]"}]}

#> Kill items to prevent duplication glitches
execute unless predicate game:game_rules/item_stacking/on as @e[x=0,type=marker,tag=rngSelected,tag=rngArrows] as @e[x=0,type=item] if items entity @s contents arrow run function items:deduct
execute unless predicate game:game_rules/item_stacking/on as @e[x=0,type=marker,tag=rngSelected,tag=rngFireball] as @e[x=0,type=item] if items entity @s contents *[custom_data~{id:"fireball"}] run function items:deduct
execute unless predicate game:game_rules/item_stacking/on as @e[x=0,type=marker,tag=rngSelected,tag=rngObshield] as @e[x=0,type=item] if items entity @s contents *[custom_data~{id:"obsidian_shield"}] run function items:deduct
execute unless predicate game:game_rules/item_stacking/on as @e[x=0,type=marker,tag=rngSelected,tag=rngCanopy] as @e[x=0,type=item] if items entity @s contents ender_pearl run function items:deduct
execute unless predicate game:game_rules/item_stacking/on as @e[x=0,type=marker,tag=rngSelected,tag=rngShield] as @e[x=0,type=item] if items entity @s contents *[custom_data~{id:"shield"}] run function items:deduct
execute unless predicate game:game_rules/item_stacking/on as @e[x=0,type=marker,tag=rngSelected,tag=rngSplash] as @e[x=0,type=item] if items entity @s contents *[custom_data~{id:"splash"}] run function items:deduct
execute unless predicate game:game_rules/item_stacking/on as @e[x=0,type=marker,tag=rngSelected,tag=rngVortex] as @e[x=0,type=item] if items entity @s contents *[custom_data~{id:"vortex"}] run function items:deduct
execute unless predicate game:game_rules/item_stacking/on as @e[x=0,type=marker,tag=rngSelected,tag=rngNova] as @e[x=0,type=item] if items entity @s contents *[custom_data~{id:"nova_rocket"}] run kill @s

function items:full_hotbar

execute as @e[x=0,type=marker,tag=rngSelected,tag=rngArrows] as @a[x=0,tag=getItem,predicate=custom:team/any_playing_team] run function items:util/givearrows
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngFireball] as @a[x=0,tag=getItem,predicate=custom:team/any_playing_team] run function items:util/givefireball
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngObshield] as @a[x=0,tag=getItem,predicate=custom:team/any_playing_team] run function items:util/giveobshield
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngCanopy] as @a[x=0,tag=getItem,predicate=custom:team/any_playing_team] run function items:util/givecanopy
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngShield] as @a[x=0,tag=getItem,predicate=custom:team/any_playing_team] run function items:util/giveshield
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngSplash] as @a[x=0,tag=getItem,predicate=custom:team/any_playing_team] run function items:util/givesplash
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngVortex] as @a[x=0,tag=getItem,predicate=custom:team/any_playing_team] run function items:util/givevortex
execute as @e[x=0,type=marker,tag=rngSelected,tag=rngNova] as @a[x=0,tag=getItem,predicate=custom:team/any_playing_team] run function items:util/givenova
kill @e[x=0,type=marker,tag=rng2]