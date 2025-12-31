#Kill when shot
execute as @e[x=0,type=end_crystal,tag=ChaseCrystal2] at @s as @e[distance=..4,type=#arrows,predicate=custom:is_moving] rotated as @s positioned 0 0 0 positioned ^ ^ ^2 positioned 0 0 ~ positioned ^ ^ ^-1 facing 0 0 0 facing ^ ^ ^-1 positioned as @s run function rr_chase:chaseblocks/shootcrystal/arrow_check
