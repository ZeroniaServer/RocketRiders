########################################################
## WINBLUE: Anything that happens when Blue team wins ##
########################################################

##Achievements
execute if entity @s[tag=!noAchievements,scores={servermode=0},tag=!realms] run function achievements:aftergameblue

##Record tags
tag @s add GameEnd
tag @s add BlueWon
tag @s add BlueWonFirst

##Celebratory items
execute as @a[predicate=custom:indimension] unless entity @s[team=!Blue,team=!Yellow] run clear @s #custom:clear
execute as @a[predicate=custom:indimension] unless entity @s[team=!Blue,team=!Yellow] run clear @s crossbow{nova:1b}
execute as @a[predicate=custom:indimension] store result score @s HasFirework run clear @s firework_rocket 0
item replace entity @a[predicate=custom:indimension,team=Blue,scores={HasFirework=0}] hotbar.1 with firework_rocket{display:{Name:'{"text":"Celebratory Fireworks","color":"blue","bold":true,"italic":false}'},Fireworks:{Flight:3,Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;2437522,2651799]}]},CanPlaceOn:["#custom:missileblocks","#custom:basereplace"],HideFlags:50} 5
execute if entity @s[scores={servermode=0},tag=!SMCustom] run item replace entity @a[predicate=custom:indimension,team=Blue] armor.chest with elytra{HideFlags:127,Enchantments:[{id:"binding_curse",lvl:1}],Unbreakable:1b,display:{Name:'[{"text":"Elytra","color":"blue","bold":true,"italic":false}]'}} 1
execute unless entity @s[scores={servermode=0},tag=!SMCustom] run item replace entity @a[predicate=custom:indimension,team=Blue] armor.chest with elytra{HideFlags:127,Unbreakable:1b,display:{Name:'[{"text":"Elytra","color":"blue","bold":true,"italic":false}]'}} 1
item replace entity @a[predicate=custom:indimension,team=Yellow] armor.head with yellow_banner{display:{Name:'{"text":"Flag of Shameful Loss","color":"gold","bold":true,"italic":false}'},BlockEntityTag:{Patterns:[{Pattern:hh,Color:0},{Pattern:hhb,Color:0},{Pattern:ls,Color:14},{Pattern:bs,Color:14},{Pattern:ls,Color:0},{Pattern:bs,Color:0},{Pattern:rs,Color:0},{Pattern:tl,Color:0}]},Enchantments:[{id:"binding_curse",lvl:1}],HideFlags:39} 1

##Effects
execute as @a[predicate=custom:indimension] unless entity @s[team=!Blue,team=!Yellow] run effect clear @s slowness
execute as @a[predicate=custom:indimension] unless entity @s[team=!Blue,team=!Yellow] run effect clear @s levitation
execute as @a[predicate=custom:indimension] unless entity @s[team=!Blue,team=!Yellow] run effect clear @s wither
execute as @a[predicate=custom:indimension] unless entity @s[team=!Blue,team=!Yellow] run effect clear @s blindness
execute as @a[predicate=custom:indimension] unless entity @s[team=!Blue,team=!Yellow] run effect give @s regeneration 1 255 true
execute as @a[predicate=custom:indimension,team=Blue] at @s run stopsound @s
execute as @a[predicate=custom:indimension,team=Yellow] at @s run stopsound @s
execute if entity @s[tag=!YellowWonFirst] as @a[predicate=custom:indimension,team=Blue] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 100 0.85
execute if entity @s[tag=!YellowWonFirst] as @a[predicate=custom:indimension,team=Yellow] at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 100 2
title @a[predicate=custom:indimension,team=!Lobby] title ["",{"text":"Team Blue Won!","color":"blue","bold":false}]

##Splashes
tag @a[predicate=custom:indimension,team=Blue] add Winner
tag @a[predicate=custom:indimension,team=Yellow] add Loser
execute as @a[predicate=custom:indimension,tag=Winner,limit=1,sort=random] run function game:winsplash
execute as @a[predicate=custom:indimension,tag=Loser,limit=1,sort=random] run function game:losesplash

##Remove UUID Tracker score
scoreboard objectives remove UUIDTracker
scoreboard objectives remove KillerUUID