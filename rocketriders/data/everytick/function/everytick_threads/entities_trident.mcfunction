# Kill any trident entities that exist outside of a match
execute unless predicate game:phase/match run return run kill @e[x=0,type=trident]
kill @e[x=0,type=trident,predicate=!custom:in_arena]

# Tridents
execute as @e[x=0,type=trident,predicate=custom:in_void,tag=!return] run data modify entity @s DealtDamage set value true
tag @e[x=0,type=trident,tag=!return,nbt={inGround:1b}] add return
tag @e[x=0,type=trident,tag=!return,nbt={DealtDamage:1b}] add return
execute as @e[x=0,type=trident,tag=return] if items entity @s contents *[damage=7] at @s run function everytick:trident_entity_break
execute unless predicate game:game_rules/item_stacking/on as @e[x=0,type=trident,tag=return] at @s run function everytick:trident_antidupe
execute as @a[x=0,predicate=custom:team/any_playing_team,predicate=custom:has_broken_trident_in_inventory] at @s run function everytick:trident_item_break
execute as @a[x=0,predicate=custom:team/any_playing_team,predicate=custom:has_trident_in_inventory] if items entity @s weapon.* trident at @s run function everytick:trident_riptide
