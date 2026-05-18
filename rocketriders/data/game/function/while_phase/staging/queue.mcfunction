execute if predicate custom:periodic_tick/20 run scoreboard players reset @a[x=0] var
execute if predicate custom:periodic_tick/20 as @a[x=0,predicate=custom:team/any_playing_team,predicate=custom:player/can_pick_up_arrows] store result score @s var run clear @s arrow 0

execute if predicate custom:periodic_tick/20 store result score $expected_arrows var if entity @a[x=0,predicate=custom:team/any_playing_team,predicate=custom:player/can_pick_up_arrows]
execute if predicate custom:periodic_tick/20 run scoreboard players operation $expected_arrows var *= $20 constant

execute if predicate custom:periodic_tick/20 run scoreboard players set $total_arrows var 0
execute if predicate custom:periodic_tick/20 run scoreboard players operation $total_arrows var += @a[x=0,scores={var=1..}] var
execute if predicate custom:periodic_tick/20 as @e[x=0,type=arrow,predicate=!custom:in_arena] run scoreboard players add $total_arrows var 1

execute if predicate custom:periodic_tick/20 if score $total_arrows var < $expected_arrows var as @a[limit=1,sort=random,x=0,scores={var=0..19}] run function items:give_count/arrow {count:1}
execute if predicate custom:periodic_tick/20 if score $total_arrows var >= $expected_arrows var if entity @a[limit=1,sort=random,x=0,scores={var=0..19}] if entity @a[limit=1,sort=random,x=0,scores={var=21..}] as @a[limit=1,sort=random,x=0,scores={var=21..}] run clear @s arrow 1
execute if predicate custom:periodic_tick/20 if score $total_arrows var >= $expected_arrows var if entity @a[limit=1,sort=random,x=0,scores={var=0..19}] if entity @a[limit=1,sort=random,x=0,scores={var=21..}] as @a[limit=1,sort=random,x=0,scores={var=0..19}] run function items:give_count/arrow {count:1}
