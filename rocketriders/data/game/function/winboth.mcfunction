########################################################
## WINBOTH: Anything that happens when both teams win ##
########################################################

##Achievements
execute if predicate rr:has_achievements if entity @s[tag=!noAchievements] run function achievements:aftergameyellow
execute if predicate rr:has_achievements if entity @s[tag=!noAchievements] run function achievements:aftergameblue

##Record tags
tag @s add GameEnd
tag @s add BothWon

##Celebratory items
execute as @a[x=0,predicate=custom:on_blue_or_yellow_team] run clear @s #custom:clear
execute as @a[x=0,predicate=custom:on_blue_or_yellow_team] run clear @s crossbow[custom_data~{id:"nova_rocket"}]
execute as @a[x=0,predicate=!custom:has_firework_rocket_in_inventory] run loot replace entity @s hotbar.1 loot items:ending/celebratory_fireworks
execute as @a[x=0,predicate=custom:on_blue_or_yellow_team] run function custom:update_armor

##Effects
execute as @a[x=0,predicate=custom:on_blue_or_yellow_team] run effect clear @s slowness
execute as @a[x=0,predicate=custom:on_blue_or_yellow_team] run effect clear @s levitation
execute as @a[x=0,predicate=custom:on_blue_or_yellow_team] run effect clear @s wither
execute as @a[x=0,predicate=custom:on_blue_or_yellow_team] run effect clear @s blindness
execute as @a[x=0,predicate=custom:on_blue_or_yellow_team] run effect give @s instant_health 1 100 true
execute as @a[x=0,team=Blue] at @s run stopsound @s
execute as @a[x=0,team=Yellow] at @s run stopsound @s
execute as @a[x=0,team=Blue] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 100 0.85
execute as @a[x=0,team=Yellow] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 100 0.85
execute unless score $skiptitles CmdData matches 1 run title @a[x=0,team=!Lobby] title ["",{"text":"Everyone Wins!","color":"green","bold":false}]

##Splashes
tag @a[x=0,team=Yellow] add Winner
tag @a[x=0,team=Blue] add Winner
execute as @a[x=0,tag=Winner,limit=1,sort=random] run function game:winsplash

##Remove UUID Tracker score
scoreboard objectives remove UUIDTracker
scoreboard objectives remove KillerUUID