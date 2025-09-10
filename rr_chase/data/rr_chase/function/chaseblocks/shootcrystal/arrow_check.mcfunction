#Kill when shot
scoreboard players set $kill_crystal var 0
execute positioned ^ ^ ^2 as @n[distance=..2,type=end_crystal,tag=ChaseCrystal2] at @s if function rr_chase:chaseblocks/shootcrystal/kill_crystal run scoreboard players set $kill_crystal var 1
execute if score $kill_crystal var matches 1 run kill @s
