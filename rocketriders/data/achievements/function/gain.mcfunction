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
