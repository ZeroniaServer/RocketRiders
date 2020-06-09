#traveler
execute as @a[team=Yellow,gamemode=survival] at @s unless score @s PlayerDeaths < @s deaths if entity @s[x=-15,dx=54,y=33,dy=37,z=-74,dz=28] run tag @s add beenOnBlue
execute as @a[team=Blue,tag=beenOnYellow,gamemode=survival] at @s unless score @s PlayerDeaths < @s deaths if entity @s[x=-15,dx=54,y=33,dy=37,z=-74,dz=28] run tag @s add beenOnBlue
execute as @a[team=Blue,gamemode=survival] at @s unless score @s PlayerDeaths < @s deaths if entity @s[x=-15,dx=54,y=33,dy=37,z=46,dz=28] run tag @s add beenOnYellow
execute as @a[team=Yellow,tag=beenOnBlue,gamemode=survival] at @s unless score @s PlayerDeaths < @s deaths if entity @s[x=-15,dx=54,y=33,dy=37,z=46,dz=28] run tag @s add beenOnYellow
execute as @a unless entity @s[team=!Yellow,team=!Blue] if score @s PlayerDeaths < @s deaths run tag @s remove beenOnBlue
execute as @a unless entity @s[team=!Yellow,team=!Blue] if score @s PlayerDeaths < @s deaths run tag @s remove beenOnYellow
execute as @a unless entity @s[team=!Yellow,team=!Blue] if score @s PlayerDeaths < @s deaths run tag @s remove beenOnBoth
execute as @a[tag=beenOnBlue,tag=beenOnYellow,gamemode=survival] run advancement grant @s only achievements:rr_challenges/traveler