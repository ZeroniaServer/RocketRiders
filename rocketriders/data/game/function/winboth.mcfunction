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
execute as @a[x=0] store result score @s HasFirework run clear @s firework_rocket 0
item replace entity @a[x=0,team=Blue,scores={HasFirework=0}] hotbar.1 with firework_rocket[custom_name={"text":"Celebratory Fireworks","color":"blue","bold":true,"italic":false},can_place_on={blocks:"#custom:missileandbase"},tooltip_display={"hidden_components":["minecraft:unbreakable","minecraft:enchantments","minecraft:attribute_modifiers","minecraft:dyed_color","minecraft:can_place_on","minecraft:can_break","minecraft:fireworks","minecraft:trim","minecraft:banner_patterns"]},fireworks={explosions:[{shape:"large_ball",colors:[I;2437522,2651799],has_trail:true,has_twinkle:true}],flight_duration:3}] 5
item replace entity @a[x=0,team=Blue] armor.chest with elytra[unbreakable={},enchantments={binding_curse:1},enchantment_glint_override=false,attribute_modifiers=[],custom_name=[{"text":"Elytra","color":"blue","bold":true,"italic":false}],tooltip_display={"hidden_components":["minecraft:unbreakable","minecraft:enchantments"]}] 1
item replace entity @a[x=0,team=Yellow,scores={HasFirework=0}] hotbar.1 with firework_rocket[custom_name={"text":"Celebratory Fireworks","color":"gold","bold":true,"italic":false},can_place_on={blocks:"#custom:missileandbase"},tooltip_display={"hidden_components":["minecraft:unbreakable","minecraft:enchantments","minecraft:attribute_modifiers","minecraft:dyed_color","minecraft:can_place_on","minecraft:can_break","minecraft:fireworks","minecraft:trim","minecraft:banner_patterns"]},fireworks={explosions:[{shape:"large_ball",colors:[I;14602026,15435844],has_trail:true,has_twinkle:true}],flight_duration:3}] 5
item replace entity @a[x=0,team=Yellow] armor.chest with elytra[unbreakable={},enchantments={binding_curse:1},enchantment_glint_override=false,attribute_modifiers=[],custom_name=[{"text":"Elytra","color":"gold","bold":true,"italic":false}],tooltip_display={"hidden_components":["minecraft:unbreakable","minecraft:enchantments"]}] 1

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