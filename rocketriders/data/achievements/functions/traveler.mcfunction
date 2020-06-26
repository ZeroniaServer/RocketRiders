##Traveler achievement

#Detecting players traveling to/from enemy base
execute as @a[team=Yellow,gamemode=survival,scores={respawn=0}] at @s if entity @s[x=-15,dx=54,y=33,dy=37,z=-74,dz=28] run tag @s add beenOnBlue
execute as @a[team=Blue,tag=beenOnYellow,gamemode=survival,scores={respawn=0}] at @s if entity @s[x=-15,dx=54,y=33,dy=37,z=-74,dz=28] run tag @s add beenOnBlue
execute as @a[team=Blue,gamemode=survival,scores={respawn=0}] at @s if entity @s[x=-15,dx=54,y=33,dy=37,z=46,dz=28] run tag @s add beenOnYellow
execute as @a[team=Yellow,tag=beenOnBlue,gamemode=survival,scores={respawn=0}] at @s if entity @s[x=-15,dx=54,y=33,dy=37,z=46,dz=28] run tag @s add beenOnYellow
execute as @a[scores={respawn=1..}] run tag @s remove beenOnBlue
execute as @a[scores={respawn=1..}] run tag @s remove beenOnYellow
execute as @a[scores={respawn=1..}] run tag @s remove beenOnBoth
execute as @a[tag=beenOnBlue,tag=beenOnYellow,gamemode=survival] run advancement grant @s only achievements:rr_challenges/traveler

#Tag resetting
tag @a[tag=beenOnBlue,tag=beenOnYellow] add beenOnBoth
tag @a[tag=beenOnBoth] remove beenOnBlue
tag @a[tag=beenOnBoth] remove beenOnYellow
tag @a[team=!Yellow,team=!Blue] remove beenOnBlue
tag @a[team=!Yellow,team=!Blue] remove beenOnYellow
tag @a[gamemode=!survival] remove beenOnBlue
tag @a[gamemode=!survival] remove beenOnYellow
tag @a[tag=beenOnBoth] remove beenOnBoth