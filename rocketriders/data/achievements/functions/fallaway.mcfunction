#fall away
execute as @a[team=Blue] at @s if entity @s[z=74,dz=0,y=36,dy=24] if score @s PlayerDeaths < @s deaths run advancement grant @s only achievements:rr_challenges/fall_away
execute as @a[team=Yellow] at @s if entity @s[z=-74,dz=0,y=36,dy=24] if score @s PlayerDeaths < @s deaths run advancement grant @s only achievements:rr_challenges/fall_away