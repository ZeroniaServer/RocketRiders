# Kill any TNT entities that exist outside of a match
execute unless predicate game:phase/match run return run kill @e[x=0,type=tnt]
kill @e[x=0,type=tnt,predicate=!custom:in_arena]

# Process primed TNT
scoreboard players set $instant_explosion_buffer var -1
execute as @e[x=0,type=tnt,tag=!tnt.processed] at @s run function game:tnt/init

scoreboard players set $maximum_tnt_explosions_per_tick var 25
execute if predicate game:modifiers/instant_tnt_explosions/on run scoreboard players set $maximum_tnt_explosions_per_tick var 10
scoreboard players set $tnt_explosions_this_tick var 0
execute as @e[x=0,type=tnt] if score @s tnt.explosion_timestamp = $gametime global at @s run function game:tnt/upon_explosion
