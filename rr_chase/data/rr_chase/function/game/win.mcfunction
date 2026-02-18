##Achievements
execute if predicate game:achievements_can_be_awarded run function rr_chase:achievements/aftergame

#I Am Speed achievement for Winner
execute if predicate game:achievements_can_be_awarded run advancement grant @a[x=0,predicate=custom:team/blue,tag=Winner,limit=1] only achievements:rr_challenges/speed

scoreboard players add @a[x=0,predicate=custom:team/blue,tag=Winner,limit=1] wins 1
scoreboard players add @a[x=0,predicate=custom:team/blue,tag=Loser] losses 1
execute as @a[x=0,tag=Winner] run function custom:player_action/playerdata/save
execute as @a[x=0,tag=Loser] run function custom:player_action/playerdata/save

##Close dialogs
dialog clear @a[x=0]

##Effects
execute as @a[x=0,predicate=custom:team/blue] run effect clear @s slowness
execute as @a[x=0,predicate=custom:team/blue] run effect clear @s levitation
execute as @a[x=0,predicate=custom:team/blue] run effect clear @s wither
execute as @a[x=0,predicate=custom:team/blue] run effect clear @s blindness
execute as @a[x=0,predicate=custom:team/blue] run effect give @s instant_health 1 100 true
execute as @a[x=0,predicate=custom:team/blue] at @s run stopsound @s
execute as @a[x=0,predicate=custom:team/blue,tag=Winner] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 100 0.85
execute as @a[x=0,predicate=custom:team/blue,tag=Loser] at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 100 2
title @a[x=0] times 10 80 20
execute unless score $skiptitles CmdData matches 1 run title @a[x=0,predicate=!custom:team/lobby] title ["",{"selector":"@a[x=0,predicate=custom:team/blue,tag=Winner,limit=1]","color":"dark_red"},{"text":" Won!","color":"red"}]
tellraw @a[x=0] ["",{"selector":"@a[x=0,predicate=custom:team/blue,tag=Winner,limit=1]","color":"dark_red","bold":true},{"text":" Won!","color":"red","bold":true}]

##Splashes
execute as @a[x=0,predicate=custom:team/blue,tag=Winner,limit=1,sort=random] run function rr_chase:game/winsplash
execute as @a[x=0,predicate=custom:team/blue,tag=Loser,limit=1,sort=random] run function rr_chase:game/losesplash

##Change Phase
function game:set_phase/match.over.tie_window
