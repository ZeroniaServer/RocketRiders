##A Whole New World achievement
##Detects a teammate next to you while you're above y=145 on a block belonging to a missile
tag @s add self
execute if entity @s[predicate=custom:team/blue] at @s if entity @s[y=145,dy=15] if predicate custom:on_missile if entity @a[distance=..5,limit=1,tag=!self,predicate=custom:team/blue] run advancement grant @s only achievements:rr_challenges/new_world
execute if entity @s[predicate=custom:team/yellow] at @s if entity @s[y=145,dy=15] if predicate custom:on_missile if entity @a[distance=..5,limit=1,tag=!self,predicate=custom:team/yellow] run advancement grant @s only achievements:rr_challenges/new_world
tag @s remove self