clear @s arrow 1
scoreboard players remove @s var 1

scoreboard players add $give_arrows var 1
execute if score $give_arrows var matches 0..19 as @a[limit=1,sort=random,x=0,scores={var=21..}] run function custom:__impl__/reset_inventory/redistribute_arrows
