########################################################
## WINBOTH: Anything that happens when both teams win ##
########################################################

##Achievements
execute if predicate game:achievements_can_be_awarded run function achievements:aftergameyellow
execute if predicate game:achievements_can_be_awarded run function achievements:aftergameblue

##Record tags
tag @s add BothWon
tag @a[x=0,predicate=custom:team/yellow] add Winner
tag @a[x=0,predicate=custom:team/blue] add Winner

##Close dialogs
dialog clear @a[x=0]

##Effects
execute as @a[x=0,predicate=custom:team/any_playing_team] run effect clear @s slowness
execute as @a[x=0,predicate=custom:team/any_playing_team] run effect clear @s levitation
execute as @a[x=0,predicate=custom:team/any_playing_team] run effect clear @s wither
execute as @a[x=0,predicate=custom:team/any_playing_team] run effect clear @s blindness
execute as @a[x=0,predicate=custom:team/any_playing_team] run effect give @s instant_health 1 100 true
execute as @a[x=0,predicate=custom:team/blue] at @s run stopsound @s
execute as @a[x=0,predicate=custom:team/yellow] at @s run stopsound @s
execute as @a[x=0,predicate=custom:team/blue] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 100 0.85
execute as @a[x=0,predicate=custom:team/yellow] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 100 0.85
execute unless predicate game:game_rules/disable_titles/on run title @a[x=0,predicate=!custom:team/lobby] title {color:"green",text:"Everyone Wins!"}

##Splashes
execute as @a[x=0,tag=Winner,limit=1,sort=random] run function game:winsplash

##Remove UUID Tracker score
scoreboard objectives remove UUIDTracker
scoreboard objectives remove KillerUUID

##Change Phase
function game:set_phase/match.closing.tie_window
