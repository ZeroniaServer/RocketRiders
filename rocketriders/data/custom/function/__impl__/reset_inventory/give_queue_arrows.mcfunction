execute store result score $expected_arrows var if entity @a[x=0,predicate=custom:team/any_playing_team,predicate=custom:player/can_pick_up_arrows]
scoreboard players operation $expected_arrows var *= $20 constant

scoreboard players reset @a[x=0] var
execute as @a[x=0,predicate=custom:team/any_playing_team,predicate=custom:player/can_pick_up_arrows] store result score @s var run clear @s arrow 0
execute store result score $total_arrows var if entity @e[x=0,type=arrow,predicate=!custom:in_arena]
scoreboard players operation $total_arrows var += @a[x=0,scores={var=1..}] var
scoreboard players operation $total_arrows var -= @s[scores={var=0..}] var

scoreboard players operation $give_arrows var = $expected_arrows var
scoreboard players operation $give_arrows var -= $total_arrows var
execute if score $give_arrows var matches 21.. run scoreboard players set $give_arrows var 20
execute if score $give_arrows var matches ..-1 run scoreboard players set $give_arrows var 0

execute if score $give_arrows var matches 0..19 as @a[limit=1,sort=random,x=0,scores={var=21..}] run function custom:__impl__/reset_inventory/redistribute_arrows 

loot replace block 0 184 -16 container.9 loot {pools:[{rolls:1,entries:[{type:"loot_table",value:"items:item/arrow"}],functions:[{function:"set_count",count:{type:"minecraft:score",target:{type:"minecraft:fixed",name:"$give_arrows"},score:"var"}}]}]}
