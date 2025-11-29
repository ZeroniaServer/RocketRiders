########################################################
## WINBOTH: Anything that happens when both teams win ##
########################################################

##Achievements
execute if predicate game:achievements_can_be_awarded if entity @s[tag=!noAchievements] run function achievements:aftergameyellow
execute if predicate game:achievements_can_be_awarded if entity @s[tag=!noAchievements] run function achievements:aftergameblue

##Record tags
scoreboard players set $match_over global 1
tag @s add BothWon
tag @a[x=0,predicate=custom:team/yellow] add Winner
tag @a[x=0,predicate=custom:team/blue] add Winner

##Celebratory items
execute as @a[x=0,predicate=custom:team/any_playing_team] run function custom:reset_inventory
execute as @a[x=0,predicate=custom:team/any_playing_team] run function custom:update_armor

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
execute unless score $skiptitles CmdData matches 1 run title @a[x=0,predicate=!custom:team/lobby] title ["",{"text":"Everyone Wins!","color":"green","bold":false}]

##Splashes
execute as @a[x=0,tag=Winner,limit=1,sort=random] run function game:winsplash

##Remove UUID Tracker score
scoreboard objectives remove UUIDTracker
scoreboard objectives remove KillerUUID