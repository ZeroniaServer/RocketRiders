##Traveler achievement

#Removing tags for dead players
execute as @a[tag=probablyDied] run tag @s remove beenOnBlue
execute as @a[tag=probablyDied] run tag @s remove beenOnYellow
execute as @a[tag=probablyDied] run tag @s remove beenOnBoth

#Detecting players traveling to/from enemy base
execute as @a[team=Yellow,gamemode=survival,tag=!probablyDied] at @s if entity @s[x=-15,dx=54,y=33,dy=37,z=-74,dz=28] run tag @s add beenOnBlue
execute as @a[team=Blue,tag=beenOnYellow,gamemode=survival,tag=!probablyDied] at @s if entity @s[x=-15,dx=54,y=33,dy=37,z=-74,dz=28] run tag @s add beenOnBlue
execute as @a[team=Blue,gamemode=survival,tag=!probablyDied] at @s if entity @s[x=-15,dx=54,y=33,dy=37,z=46,dz=28] run tag @s add beenOnYellow
execute as @a[team=Yellow,tag=beenOnBlue,gamemode=survival,tag=!probablyDied] at @s if entity @s[x=-15,dx=54,y=33,dy=37,z=46,dz=28] run tag @s add beenOnYellow
execute as @a[tag=beenOnBlue,tag=beenOnYellow,gamemode=survival,tag=!probablyDied] run advancement grant @s only achievements:rr_challenges/traveler

#Tag resetting
tag @a[tag=beenOnBlue,tag=beenOnYellow] add beenOnBoth
tag @a[tag=beenOnBoth] remove beenOnBlue
tag @a[tag=beenOnBoth] remove beenOnYellow
tag @a[team=!Yellow,team=!Blue] remove beenOnBlue
tag @a[team=!Yellow,team=!Blue] remove beenOnYellow
tag @a[gamemode=!survival] remove beenOnBlue
tag @a[gamemode=!survival] remove beenOnYellow
tag @a[tag=beenOnBoth] remove beenOnBoth