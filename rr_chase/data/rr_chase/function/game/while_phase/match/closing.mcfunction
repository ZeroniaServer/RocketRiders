execute if score $closing_timer global matches 1 run effect give @a[x=0,predicate=custom:team/blue,tag=Loser] weakness infinite 100 true
execute if score $closing_timer global matches 1.. run fill 13 74 68 7 64 61 moving_piston replace #custom:air

execute if score $closing_timer global matches 1..10 run function rr_chase:chaseblocks/killall
tag @a[x=0,predicate=custom:team/blue] remove InLead
effect clear @a[x=0] glowing
execute if score $closing_timer global matches 1..2 run tag @a[x=0,predicate=custom:team/any_playing_team] remove force_mount
execute if score $closing_timer global matches 1..2 run tp @a[x=0,predicate=custom:team/blue,tag=Loser] 12 64 -66 0 0
execute if score $closing_timer global matches 1..2 unless predicate game:modifiers/hardcore/on run tp @a[x=0,predicate=custom:team/blue,tag=Winner,limit=1] 12 64 63 180 0
execute if score $closing_timer global matches 1..2 if predicate game:modifiers/hardcore/on run tp @a[x=0,predicate=custom:team/blue,tag=Winner,limit=1] 12 64 64.0 180 0
