execute if score $closing_sequence.time match matches 1 run effect give @a[x=0,predicate=custom:team/blue,tag=Loser] weakness infinite 100 true
execute if score $closing_sequence.time match matches 1.. run fill 13 74 68 7 64 61 moving_piston replace #custom:air

execute if score $closing_sequence.time match matches 1..10 run function rr_chase:chaseblocks/killall
tag @a[x=0,predicate=custom:team/blue] remove InLead
effect clear @a[x=0] glowing
execute if score $closing_sequence.time match matches 1..2 as @a[x=0,predicate=custom:team/any_playing_team] run function custom:player/teleport_to_start
