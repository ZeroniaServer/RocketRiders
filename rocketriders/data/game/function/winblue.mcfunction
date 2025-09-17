########################################################
## WINBLUE: Anything that happens when Blue team wins ##
########################################################

##Achievements
execute if predicate rr:has_achievements if entity @s[tag=!noAchievements] run function achievements:aftergameblue

##Record tags
scoreboard players set $game_ended global 1
tag @s add BlueWon
tag @s add BlueWonFirst

##Celebratory items
execute as @a[x=0,predicate=custom:on_blue_or_yellow_team] run clear @s #custom:clear
execute as @a[x=0,predicate=custom:on_blue_or_yellow_team] run clear @s *[custom_data~{id:"nova_rocket"}]
execute as @a[x=0,predicate=custom:on_blue_or_yellow_team] run clear @s *[custom_data~{id:"booster_rocket"}]
execute as @a[x=0,team=Blue,predicate=!custom:has_firework_rocket_in_inventory] run loot replace entity @s hotbar.1 loot items:ending/celebratory_fireworks
execute as @a[x=0,predicate=custom:on_blue_or_yellow_team] run function custom:update_armor

##Effects
execute as @a[x=0,predicate=custom:on_blue_or_yellow_team] run effect clear @s slowness
execute as @a[x=0,predicate=custom:on_blue_or_yellow_team] run effect clear @s levitation
execute as @a[x=0,predicate=custom:on_blue_or_yellow_team] run effect clear @s wither
execute as @a[x=0,predicate=custom:on_blue_or_yellow_team] run effect clear @s blindness
execute as @a[x=0,predicate=custom:on_blue_or_yellow_team] run effect give @s instant_health 1 100 true
execute as @a[x=0,team=Blue] at @s run stopsound @s
execute as @a[x=0,team=Yellow] at @s run stopsound @s
execute if entity @s[tag=!YellowWonFirst] as @a[x=0,team=Blue] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 100 0.85
execute if entity @s[tag=!YellowWonFirst] as @a[x=0,team=Yellow] at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 100 2
execute unless score $skiptitles CmdData matches 1 run title @a[x=0,team=!Lobby] title ["",{"text":"Team Blue Won!","color":"blue","bold":false}]

##Splashes
tag @a[x=0,team=Blue] add Winner
tag @a[x=0,team=Yellow] add Loser
execute as @a[x=0,tag=Winner,limit=1,sort=random] run function game:winsplash
execute as @a[x=0,tag=Loser,limit=1,sort=random] run function game:losesplash

##Remove UUID Tracker score
scoreboard objectives remove UUIDTracker
scoreboard objectives remove KillerUUID