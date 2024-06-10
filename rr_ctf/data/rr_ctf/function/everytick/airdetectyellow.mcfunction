execute at @s run function rr_ctf:everytick/endstoneregen
execute at @s run tp @s ~ 63 ~-1
execute at @s if predicate rr_ctf:endstoneyellow run tp @s ~-1 63 66
execute at @s if predicate rr_ctf:endstonex run tp @s 38 63 66