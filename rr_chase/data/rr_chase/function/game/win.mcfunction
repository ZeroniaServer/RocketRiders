##Achievements
execute if predicate rr:has_achievements run function rr_chase:achievements/aftergame

##Record tags
tag @s add GameEnd

##Celebratory items
clear @a[x=0,team=Blue] #custom:clear
clear @a[x=0,team=Blue] *[custom_data~{id:"nova_rocket"}]
execute as @a[x=0,team=Blue,tag=Winner,predicate=!custom:has_firework_rocket_in_inventory,limit=1] run loot replace entity @s hotbar.1 loot items:ending/celebratory_fireworks
execute as @a[x=0,team=Blue,tag=Winner,limit=1] run function custom:update_armor
execute as @a[x=0] store result score @s HasFlag run clear @s #banners 0
execute as @a[x=0,team=Blue,tag=Loser,scores={HasFlag=0}] run function custom:update_armor
#I Am Speed achievement for Winner
execute if predicate rr:has_achievements run advancement grant @a[x=0,team=Blue,tag=Winner,limit=1] only achievements:rr_challenges/speed

scoreboard players add @a[x=0,team=Blue,tag=Winner,limit=1] wins 1
scoreboard players add @a[x=0,team=Blue,tag=Loser] losses 1

##Effects
execute as @a[x=0,team=Blue] run effect clear @s slowness
execute as @a[x=0,team=Blue] run effect clear @s levitation
execute as @a[x=0,team=Blue] run effect clear @s wither
execute as @a[x=0,team=Blue] run effect clear @s blindness
execute as @a[x=0,team=Blue] run effect give @s instant_health 1 100 true
execute as @a[x=0,team=Blue] at @s run stopsound @s
execute as @a[x=0,team=Blue,tag=Winner] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 100 0.85
execute as @a[x=0,team=Blue,tag=Loser] at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 100 2
title @a[x=0] times 10 80 20
execute unless score $skiptitles CmdData matches 1 run title @a[x=0,team=!Lobby] title ["",{"selector":"@a[x=0,team=Blue,tag=Winner,limit=1]","color":"dark_red"},{"text":" Won!","color":"red"}]
tellraw @a[x=0] ["",{"selector":"@a[x=0,team=Blue,tag=Winner,limit=1]","color":"dark_red","bold":true},{"text":" Won!","color":"red","bold":true}]

##Splashes
execute as @a[x=0,team=Blue,tag=Winner,limit=1,sort=random] run function rr_chase:game/winsplash
execute as @a[x=0,team=Blue,tag=Loser,limit=1,sort=random] run function rr_chase:game/losesplash