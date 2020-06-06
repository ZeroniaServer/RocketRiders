#traveler
tag @a[tag=beenOnBlue,tag=beenOnYellow] add beenOnBoth
tag @a[tag=beenOnBoth] remove beenOnBlue
tag @a[tag=beenOnBoth] remove beenOnYellow
tag @a[team=!Yellow,team=!Blue] remove beenOnBlue
tag @a[team=!Yellow,team=!Blue] remove beenOnYellow
tag @a[team=!Yellow,team=!Blue] remove beenOnBoth
tag @a[gamemode=!survival] remove beenOnBlue
tag @a[gamemode=!survival] remove beenOnYellow
tag @a[gamemode=!survival] remove beenOnBoth
tag @a[tag=beenOnBoth] remove beenOnBoth

execute as @a[team=Yellow,gamemode=survival] at @s if entity @s[z=-74,dz=28] run tag @s add beenOnBlue
execute as @a[team=Blue,tag=beenOnYellow,gamemode=survival] at @s if entity @s[z=-74,dz=28] run tag @s add beenOnBlue
execute as @a[team=Blue,gamemode=survival] at @s if entity @s[z=46,dz=28] run tag @s add beenOnYellow
execute as @a[team=Yellow,tag=beenOnBlue,gamemode=survival] at @s if entity @s[z=46,dz=28] run tag @s add beenOnYellow
execute as @a unless entity @s[team=!Yellow,team=!Blue] if score @s PlayerDeaths < @s deaths run tag @s remove beenOnBlue
execute as @a unless entity @s[team=!Yellow,team=!Blue] if score @s PlayerDeaths < @s deaths run tag @s remove beenOnYellow
execute as @a[tag=beenOnBlue,tag=beenOnYellow,gamemode=survival] run advancement grant @s only achievements:rr_challenges/traveler