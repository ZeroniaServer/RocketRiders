########################################################
## WINBOTH: Anything that happens when both teams win ##
########################################################

##Achievements
execute if entity @s[tag=!noAchievements,scores={servermode=0},tag=!realms] run function achievements:aftergameyellow
execute if entity @s[tag=!noAchievements,scores={servermode=0},tag=!realms] run function achievements:aftergameblue

##Record tags
tag @s add GameEnd
tag @s add BothWon

##Celebratory items
execute as @a[x=0] unless entity @s[team=!Blue,team=!Yellow] run clear @s #custom:clear
execute as @a[x=0] unless entity @s[team=!Blue,team=!Yellow] run clear @s crossbow[custom_data~{nova:1b}]
execute as @a[x=0,predicate=!custom:has_firework_rocket_in_inventory] run loot replace entity @s hotbar.1 loot items:ending/celebratory_fireworks
execute as @a run loot replace entity @s armor.chest loot items:ending/elytra

##Effects
execute as @a[x=0] unless entity @s[team=!Blue,team=!Yellow] run effect clear @s slowness
execute as @a[x=0] unless entity @s[team=!Blue,team=!Yellow] run effect clear @s levitation
execute as @a[x=0] unless entity @s[team=!Blue,team=!Yellow] run effect clear @s wither
execute as @a[x=0] unless entity @s[team=!Blue,team=!Yellow] run effect clear @s blindness
execute as @a[x=0] unless entity @s[team=!Blue,team=!Yellow] run effect give @s instant_health 1 100 true
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