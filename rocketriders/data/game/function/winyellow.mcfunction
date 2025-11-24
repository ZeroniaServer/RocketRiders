############################################################
## WINYELLOW: Anything that happens when Yellow team wins ##
############################################################

##Achievements
execute if predicate game:achievements_can_be_awarded if entity @s[tag=!noAchievements] run function achievements:aftergameyellow

##Record tags
scoreboard players set $match_over global 1
tag @s add YellowWon
tag @s add YellowWonFirst
tag @a[x=0,predicate=custom:team/yellow] add Winner
tag @a[x=0,predicate=custom:team/blue] add Loser

##Celebratory items
execute as @a[x=0,predicate=custom:team/any_playing_team] run clear @s #custom:clear
execute as @a[x=0,predicate=custom:team/any_playing_team] run clear @s *[custom_data~{id:"nova_rocket"}]
execute as @a[x=0,predicate=custom:team/any_playing_team] run clear @s *[custom_data~{id:"booster_rocket"}]
execute as @a[x=0,predicate=custom:team/yellow,predicate=!custom:has_firework_rocket_in_inventory] run loot replace entity @s hotbar.1 loot items:ending/celebratory_fireworks
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
execute if entity @s[tag=!BlueWonFirst] as @a[x=0,predicate=custom:team/yellow] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 100 0.85
execute if entity @s[tag=!BlueWonFirst] as @a[x=0,predicate=custom:team/blue] at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 100 2
execute unless score $skiptitles CmdData matches 1 run title @a[x=0,predicate=!custom:team/lobby] title ["",{"text":"Team Yellow Won!","color":"yellow","bold":false}]

##Splashes
execute as @a[x=0,tag=Winner,limit=1,sort=random] run function game:winsplash
execute as @a[x=0,tag=Loser,limit=1,sort=random] run function game:losesplash

##Remove UUID Tracker score
scoreboard objectives remove UUIDTracker
scoreboard objectives remove KillerUUID