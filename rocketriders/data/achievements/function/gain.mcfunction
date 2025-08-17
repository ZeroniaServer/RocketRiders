##############################################
## GAIN: The main function for achievements ##
## to be granted when a game is in progress ##
##############################################

#Necessary for fall distance check
execute as @a[x=0,team=Blue,predicate=!custom:not_falling] store result score @s FallDistance run data get entity @s fall_distance 50
execute as @a[x=0,team=Yellow,predicate=!custom:not_falling] store result score @s FallDistance run data get entity @s fall_distance 50

#All achievements
execute if entity @s[predicate=!rr:realms,scores={servermode=-1..0}] as @a[x=0,predicate=custom:on_blue_or_yellow_team] run function achievements:rainingmen
execute if entity @s[predicate=!rr:realms,scores={servermode=-1..0}] as @a[x=0,predicate=custom:on_blue_or_yellow_team] run function achievements:uphere
execute if entity @s[predicate=!rr:realms,scores={servermode=-1..0}] as @a[x=0,predicate=custom:on_blue_or_yellow_team] run function achievements:ballet
execute if entity @s[predicate=!rr:realms,scores={servermode=-1..0}] as @a[x=0,predicate=custom:on_blue_or_yellow_team] run function achievements:committed
execute if entity @s[predicate=!rr:realms,scores={servermode=-1..0}] as @a[x=0,predicate=custom:on_blue_or_yellow_team] run function achievements:newworld
execute if entity @s[predicate=!rr:realms,scores={servermode=-1..0}] as @a[x=0,predicate=custom:on_blue_or_yellow_team] run function achievements:lockdown
execute if entity @s[predicate=!rr:realms,scores={servermode=-1..0,gametime=5..},tag=!TimeOut] as @a[x=0,predicate=custom:on_blue_or_yellow_team] run function achievements:traveler
execute if entity @s[predicate=!rr:realms,scores={servermode=-1..0}] as @a[x=0,predicate=custom:on_blue_or_yellow_team] run function achievements:gravitationalshootout
execute if entity @s[predicate=!rr:realms,scores={servermode=-1..0}] as @a[x=0,predicate=custom:on_blue_or_yellow_team] run function achievements:veteran
execute if entity @s[predicate=!rr:realms,scores={servermode=-1..0}] as @a[x=0,predicate=custom:on_blue_or_yellow_team] at @s run function achievements:useful
execute if entity @s[predicate=!rr:realms,scores={servermode=-1..0}] as @a[x=0,predicate=custom:on_blue_or_yellow_team] run function achievements:moonwalker
execute if entity @s[predicate=!rr:realms,scores={servermode=-1..0}] as @a[x=0,predicate=custom:on_blue_or_yellow_team] run function achievements:sabotage

#Necessary for on base check
execute if entity @s[tag=!Hardcore] as @a[x=0,predicate=custom:on_blue_or_yellow_team,predicate=custom:alive] at @s if entity @s[x=-15,dx=54,y=33,dy=40,z=-74,dz=28] run tag @s add onBlue
execute if entity @s[tag=!Hardcore] as @a[x=0,predicate=custom:on_blue_or_yellow_team,predicate=custom:alive] at @s if entity @s[x=-15,dx=54,y=33,dy=40,z=46,dz=28] run tag @s add onYellow
execute if entity @s[tag=!Hardcore] as @a[x=0,tag=onBlue] at @s unless entity @s[x=-15,dx=54,y=33,dy=40,z=-74,dz=28] run tag @s remove onBlue
execute if entity @s[tag=!Hardcore] as @a[x=0,tag=onYellow] at @s unless entity @s[x=-15,dx=54,y=33,dy=40,z=46,dz=28] run tag @s remove onYellow
execute if entity @s[tag=Hardcore] as @a[x=0,predicate=custom:on_blue_or_yellow_team,predicate=custom:alive] at @s if entity @s[x=-15,dx=54,y=33,dy=40,z=-74,dz=10] run tag @s add onBlue
execute if entity @s[tag=Hardcore] as @a[x=0,predicate=custom:on_blue_or_yellow_team,predicate=custom:alive] at @s if entity @s[x=-15,dx=54,y=33,dy=40,z=64,dz=10] run tag @s add onYellow
execute if entity @s[tag=Hardcore] as @a[x=0,tag=onBlue] at @s unless entity @s[x=-15,dx=54,y=33,dy=40,z=-74,dz=10] run tag @s remove onBlue
execute if entity @s[tag=Hardcore] as @a[x=0,tag=onYellow] at @s unless entity @s[x=-15,dx=54,y=33,dy=40,z=64,dz=10] run tag @s remove onYellow

#Necessary for fall distance check (again)
execute as @a[x=0,team=Blue] at @s if predicate custom:not_falling run scoreboard players reset @s FallDistance
execute as @a[x=0,team=Yellow] at @s if predicate custom:not_falling run scoreboard players reset @s FallDistance