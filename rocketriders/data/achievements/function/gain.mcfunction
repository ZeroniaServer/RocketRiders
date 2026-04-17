##############################################
## GAIN: The main function for achievements ##
## that are granted when a match is in play ##
##############################################

#All achievements
tag @a[x=0,predicate=custom:team/any_playing_team,predicate=custom:player/is_pressing_any_movement_key] add firstMoved

execute if predicate game:achievements_can_be_awarded as @a[x=0,predicate=custom:team/any_playing_team] run function achievements:rainingmen
execute if predicate game:achievements_can_be_awarded as @a[x=0,predicate=custom:team/any_playing_team] run function achievements:uphere
execute if predicate game:achievements_can_be_awarded as @a[x=0,predicate=custom:team/any_playing_team] run function achievements:ballet
execute if predicate game:achievements_can_be_awarded as @a[x=0,predicate=custom:team/any_playing_team] run function achievements:committed
execute if predicate game:achievements_can_be_awarded as @a[x=0,predicate=custom:team/any_playing_team] run function achievements:newworld
execute if predicate game:achievements_can_be_awarded as @a[x=0,predicate=custom:team/any_playing_team] run function achievements:lockdown
execute if predicate game:achievements_can_be_awarded as @a[x=0,predicate=custom:team/any_playing_team] run function achievements:traveler
execute if predicate game:achievements_can_be_awarded as @a[x=0,predicate=custom:team/any_playing_team] run function achievements:gravitationalshootout
execute if predicate game:achievements_can_be_awarded if entity @a[limit=1,x=0,predicate=custom:team/any_playing_team,advancements={achievements:rr_challenges/veteran=false}] run function achievements:veteran
execute if predicate game:achievements_can_be_awarded as @a[x=0,predicate=custom:team/any_playing_team] at @s run function achievements:useful
execute if predicate game:achievements_can_be_awarded run tag @a[x=0,predicate=custom:team/any_playing_team,predicate=achievements:fail_moonwalker] add FailedMoon
execute if predicate game:achievements_can_be_awarded as @a[x=0,predicate=custom:team/any_playing_team] run function achievements:sabotage

#Necessary for on base check
execute unless predicate game:modifiers/hardcore/on as @e[x=0,type=player,predicate=custom:team/any_playing_team] at @s if entity @s[x=-15,dx=54,y=33,dy=40,z=-74,dz=28] run tag @s add onBlue
execute unless predicate game:modifiers/hardcore/on as @e[x=0,type=player,predicate=custom:team/any_playing_team] at @s if entity @s[x=-15,dx=54,y=33,dy=40,z=46,dz=28] run tag @s add onYellow
execute unless predicate game:modifiers/hardcore/on as @a[x=0,tag=onBlue] at @s unless entity @s[x=-15,dx=54,y=33,dy=40,z=-74,dz=28] run tag @s remove onBlue
execute unless predicate game:modifiers/hardcore/on as @a[x=0,tag=onYellow] at @s unless entity @s[x=-15,dx=54,y=33,dy=40,z=46,dz=28] run tag @s remove onYellow
execute if predicate game:modifiers/hardcore/on as @e[x=0,type=player,predicate=custom:team/any_playing_team] at @s if entity @s[x=-15,dx=54,y=33,dy=40,z=-74,dz=10] run tag @s add onBlue
execute if predicate game:modifiers/hardcore/on as @e[x=0,type=player,predicate=custom:team/any_playing_team] at @s if entity @s[x=-15,dx=54,y=33,dy=40,z=64,dz=10] run tag @s add onYellow
execute if predicate game:modifiers/hardcore/on as @a[x=0,tag=onBlue] at @s unless entity @s[x=-15,dx=54,y=33,dy=40,z=-74,dz=10] run tag @s remove onBlue
execute if predicate game:modifiers/hardcore/on as @a[x=0,tag=onYellow] at @s unless entity @s[x=-15,dx=54,y=33,dy=40,z=64,dz=10] run tag @s remove onYellow
