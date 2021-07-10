##Achievements
execute as @s[scores={servermode=0},tag=!realms,tag=!SMCustom] run function rr_chase:achievements/aftergame

##Record tags
tag @s add GameEnd

##Celebratory items
clear @a[team=Blue] #custom:clear
clear @a[team=Blue] crossbow{nova:1b}
execute as @a store result score @s HasFirework run clear @s firework_rocket 0
item replace entity @a[team=Blue,tag=Winner,scores={HasFirework=0},limit=1] hotbar.1 with firework_rocket{display:{Name:'{"text":"Celebratory Fireworks","color":"blue","bold":true,"italic":false}'},Fireworks:{Flight:3,Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I; 2437522,2651799]}]},CanPlaceOn:["#custom:missileblocks","#custom:basereplace"],HideFlags:50} 5
item replace entity @a[team=Blue,tag=Winner,limit=1] armor.chest with elytra{HideFlags:7,Enchantments:[{id:"binding_curse",lvl:1}],Unbreakable:1b,display:{Name:'[{"text":"Elytra","color":"blue","bold":true,"italic":false}]'}} 1
execute as @a store result score @s HasFlag run clear @s #banners 0
item replace entity @a[team=Blue,tag=Loser,scores={HasFlag=0}] armor.head with blue_banner{display:{Name:'{"text":"Flag of Shameful Loss","color":"blue","bold":true,"italic":false}'},BlockEntityTag:{Patterns:[{Pattern:hh,Color:0},{Pattern:hhb,Color:0},{Pattern:ls,Color:11},{Pattern:bs,Color:11},{Pattern:ls,Color:0},{Pattern:bs,Color:0},{Pattern:rs,Color:0},{Pattern:tl,Color:0}]},Enchantments:[{id:"binding_curse",lvl:1}],HideFlags:39} 1
#I Am Speed achievement for Winner
execute as @s[scores={servermode=0},tag=!realms,tag=!SMCustom] run advancement grant @a[team=Blue,tag=Winner,limit=1] only achievements:rr_challenges/speed

##Effects
execute as @a[team=Blue] run effect clear @s slowness
execute as @a[team=Blue] run effect clear @s levitation
execute as @a[team=Blue] run effect clear @s wither
execute as @a[team=Blue] run effect clear @s blindness
execute as @a[team=Blue] run effect give @s regeneration 1 255 true
execute as @a[team=Blue] at @s run stopsound @s
execute as @a[team=Blue,tag=Winner] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 100 0.85
execute as @a[team=Blue,tag=Loser] at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 100 2
title @a[team=!Lobby] title ["",{"selector":"@a[team=Blue,tag=Winner,limit=1]","color":"blue"},{"text":" Won!","color":"blue"}]
tellraw @a ["",{"selector":"@a[team=Blue,tag=Winner,limit=1]","color":"blue","bold":true},{"text":" Won!","color":"blue","bold":true}]

##Splashes
execute as @a[team=Blue,tag=Winner,limit=1,sort=random] run function rr_chase:game/winsplash
execute as @a[team=Blue,tag=Loser,limit=1,sort=random] run function rr_chase:game/losesplash