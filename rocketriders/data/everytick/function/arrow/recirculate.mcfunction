kill @s

execute as @a[x=0,predicate=custom:team/any_playing_team] store result score @s var if items entity @s custom:player arrow

execute on origin if predicate custom:entity/in_overworld if predicate custom:team/any_playing_team if score @s var matches 0..19 if predicate custom:player/can_pick_up_arrows run return run function items:give_count/arrow {count:1}
execute as @a[limit=1,sort=random,x=0,predicate=custom:team/any_playing_team,scores={var=0..19},predicate=custom:player/can_pick_up_arrows] run return run function items:give_count/arrow {count:1}
