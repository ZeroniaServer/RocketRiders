##Traveler achievement

#Removing tags for dead players
tag @s[tag=probablyDied] remove beenOnBlue
tag @s[tag=probablyDied] remove beenOnYellow
tag @s[tag=probablyDied] remove beenOnBoth

#Detecting players traveling to/from enemy base
execute if entity @s[team=Yellow,gamemode=survival,tag=!probablyDied] at @s if entity @s[x=-15,dx=54,y=33,dy=37,z=-74,dz=28] run tag @s add beenOnBlue
execute if entity @s[team=Blue,tag=beenOnYellow,gamemode=survival,tag=!probablyDied] at @s if entity @s[x=-15,dx=54,y=33,dy=37,z=-74,dz=28] run tag @s add beenOnBlue
execute if entity @s[team=Blue,gamemode=survival,tag=!probablyDied] at @s if entity @s[x=-15,dx=54,y=33,dy=37,z=46,dz=28] run tag @s add beenOnYellow
execute if entity @s[team=Yellow,tag=beenOnBlue,gamemode=survival,tag=!probablyDied] at @s if entity @s[x=-15,dx=54,y=33,dy=37,z=46,dz=28] run tag @s add beenOnYellow
execute if entity @s[tag=beenOnBlue,tag=beenOnYellow,gamemode=survival,tag=!probablyDied] run advancement grant @s only achievements:rr_challenges/traveler

#Tag resetting
tag @s[tag=beenOnBlue,tag=beenOnYellow] add beenOnBoth
tag @s[tag=beenOnBoth] remove beenOnBlue
tag @s[tag=beenOnBoth] remove beenOnYellow
tag @s[team=!Yellow,team=!Blue] remove beenOnBlue
tag @s[team=!Yellow,team=!Blue] remove beenOnYellow
tag @s[gamemode=!survival] remove beenOnBlue
tag @s[gamemode=!survival] remove beenOnYellow
tag @s[tag=beenOnBoth] remove beenOnBoth