##############################################
## GAIN: The main function for achievements ##
## to be granted when a game is in progress ##
##############################################

#Necessary for fall distance check
execute as @a[x=0,predicate=custom:team/blue,predicate=!custom:not_falling] store result score @s FallDistance run data get entity @s fall_distance 50
execute as @a[x=0,predicate=custom:team/yellow,predicate=!custom:not_falling] store result score @s FallDistance run data get entity @s fall_distance 50

#All achievements
tag @a[x=0,predicate=custom:team/any_playing_team,predicate=custom:is_traversing] add firstMoved

execute if predicate game:achievements_can_be_awarded as @a[x=0,predicate=custom:team/any_playing_team] run function achievements:rainingmen
execute if predicate game:achievements_can_be_awarded as @a[x=0,predicate=custom:team/any_playing_team] run function achievements:uphere
execute if predicate game:achievements_can_be_awarded as @a[x=0,predicate=custom:team/any_playing_team] run function achievements:ballet
execute if predicate game:achievements_can_be_awarded as @a[x=0,predicate=custom:team/any_playing_team] run function achievements:committed
execute if predicate game:achievements_can_be_awarded as @a[x=0,predicate=custom:team/any_playing_team] run function achievements:newworld
execute if predicate game:achievements_can_be_awarded as @a[x=0,predicate=custom:team/any_playing_team] run function achievements:lockdown
execute if predicate game:achievements_can_be_awarded if entity @s[tag=!TimeOut] as @a[x=0,predicate=custom:team/any_playing_team] run function achievements:traveler
execute if predicate game:achievements_can_be_awarded as @a[x=0,predicate=custom:team/any_playing_team] run function achievements:gravitationalshootout
execute if predicate game:achievements_can_be_awarded if entity @a[limit=1,x=0,predicate=custom:team/any_playing_team,advancements={achievements:rr_challenges/veteran=false}] run function achievements:veteran
execute if predicate game:achievements_can_be_awarded as @a[x=0,predicate=custom:team/any_playing_team] at @s run function achievements:useful
execute if predicate game:achievements_can_be_awarded run tag @a[x=0,predicate=custom:team/any_playing_team,predicate=achievements:fail_moonwalker] add FailedMoon
execute if predicate game:achievements_can_be_awarded as @a[x=0,predicate=custom:team/any_playing_team] run function achievements:sabotage

#Necessary for on base check
execute unless predicate game:modifiers/hardcore/on as @a[x=0,predicate=custom:team/any_playing_team,predicate=custom:alive] at @s if entity @s[x=-15,dx=54,y=33,dy=40,z=-74,dz=28] run tag @s add onBlue
execute unless predicate game:modifiers/hardcore/on as @a[x=0,predicate=custom:team/any_playing_team,predicate=custom:alive] at @s if entity @s[x=-15,dx=54,y=33,dy=40,z=46,dz=28] run tag @s add onYellow
execute unless predicate game:modifiers/hardcore/on as @a[x=0,tag=onBlue] at @s unless entity @s[x=-15,dx=54,y=33,dy=40,z=-74,dz=28] run tag @s remove onBlue
execute unless predicate game:modifiers/hardcore/on as @a[x=0,tag=onYellow] at @s unless entity @s[x=-15,dx=54,y=33,dy=40,z=46,dz=28] run tag @s remove onYellow
execute if predicate game:modifiers/hardcore/on as @a[x=0,predicate=custom:team/any_playing_team,predicate=custom:alive] at @s if entity @s[x=-15,dx=54,y=33,dy=40,z=-74,dz=10] run tag @s add onBlue
execute if predicate game:modifiers/hardcore/on as @a[x=0,predicate=custom:team/any_playing_team,predicate=custom:alive] at @s if entity @s[x=-15,dx=54,y=33,dy=40,z=64,dz=10] run tag @s add onYellow
execute if predicate game:modifiers/hardcore/on as @a[x=0,tag=onBlue] at @s unless entity @s[x=-15,dx=54,y=33,dy=40,z=-74,dz=10] run tag @s remove onBlue
execute if predicate game:modifiers/hardcore/on as @a[x=0,tag=onYellow] at @s unless entity @s[x=-15,dx=54,y=33,dy=40,z=64,dz=10] run tag @s remove onYellow

#Necessary for fall distance check (again)
execute as @a[x=0,predicate=custom:team/blue] at @s if predicate custom:not_falling run scoreboard players reset @s FallDistance
execute as @a[x=0,predicate=custom:team/yellow] at @s if predicate custom:not_falling run scoreboard players reset @s FallDistance