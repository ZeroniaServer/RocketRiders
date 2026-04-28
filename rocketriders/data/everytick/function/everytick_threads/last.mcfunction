## Join Pad Barrier Displays
execute if entity @e[limit=1,x=0,type=marker,tag=join_pad.left,tag=join_pad.show_barrier,tag=!join_pad.was_showing_barrier] run data merge entity @e[limit=1,type=text_display,tag=join_pad_display.left] {start_interpolation:0,interpolation_duration:0,transformation:{scale:[7.5,7.5,0]}}
execute if entity @e[limit=1,x=0,type=marker,tag=join_pad.left,tag=!join_pad.show_barrier,tag=join_pad.was_showing_barrier] run data merge entity @e[limit=1,type=text_display,tag=join_pad_display.left] {start_interpolation:0,interpolation_duration:0,transformation:{scale:[0,0,0]}}

execute if entity @e[limit=1,x=0,type=marker,tag=join_pad.middle,tag=join_pad.show_barrier,tag=!join_pad.was_showing_barrier] run data merge entity @e[limit=1,type=text_display,tag=join_pad_display.middle] {start_interpolation:0,interpolation_duration:0,transformation:{scale:[7.5,7.5,0]}}
execute if entity @e[limit=1,x=0,type=marker,tag=join_pad.middle,tag=!join_pad.show_barrier,tag=join_pad.was_showing_barrier] run data merge entity @e[limit=1,type=text_display,tag=join_pad_display.middle] {start_interpolation:0,interpolation_duration:0,transformation:{scale:[0,0,0]}}

execute if entity @e[limit=1,x=0,type=marker,tag=join_pad.right,tag=join_pad.show_barrier,tag=!join_pad.was_showing_barrier] run data merge entity @e[limit=1,type=text_display,tag=join_pad_display.right] {start_interpolation:0,interpolation_duration:0,transformation:{scale:[7.5,7.5,0]}}
execute if entity @e[limit=1,x=0,type=marker,tag=join_pad.right,tag=!join_pad.show_barrier,tag=join_pad.was_showing_barrier] run data merge entity @e[limit=1,type=text_display,tag=join_pad_display.right] {start_interpolation:0,interpolation_duration:0,transformation:{scale:[0,0,0]}}

## Navigation book
execute if score $update_nav_book global matches 1 run function lobby:__update_nav_book/update_with_template
scoreboard players reset $update_nav_book global

## Sub-tick shenanigans
execute as @e[x=0,type=villager,tag=subtick_hackery.mob] run data merge entity @s {DeathTime:19,Health:0}
execute if entity @a[limit=1,x=0] run function everytick:subtick_hackery/start

## Remove canopy rider penalty (hotfix for broken CK death handling, but also probably other cases where it isn't removed correctly)
execute as @a[x=0,predicate=!custom:entity/has_vehicle] run attribute @s minecraft:block_interaction_range modifier remove rocketriders:canopy_rider_penalty

## Clear out data storage rocketriders:joinwarn
data remove storage rocketriders:joinwarn title
data remove storage rocketriders:joinwarn subtitle

## Automatically trigger arena reset if stuck for more than 5 seconds
execute if score #chunk_clear_inactive_ticks global matches ..-1 run scoreboard players set #chunk_clear_inactive_ticks global 0
scoreboard players add #chunk_clear_inactive_ticks global 1
execute unless predicate game:phase/match unless score $chunk_clear_progress global matches 50.. if score #chunk_clear_inactive_ticks global matches 101.. run function arenaclear:brute_force/start

## Return main item if it was accidentally removed
execute if predicate game:phase/match as @e[x=0,type=player,predicate=custom:team/any_playing_team,predicate=!custom:player/has_main_item_in_inventory] run loot give @s loot items:main_item
