############################################################
## WINYELLOW: Anything that happens when Yellow team wins ##
############################################################

##Achievements
execute if entity @s[tag=!noAchievements,scores={servermode=0},tag=!realms] run function achievements:aftergameyellow

##Record tags
tag @s add GameEnd
tag @s add YellowWon
tag @s add YellowWonFirst

##Celebratory items
execute as @a[x=0] unless entity @s[team=!Blue,team=!Yellow] run clear @s #custom:clear
execute as @a[x=0] unless entity @s[team=!Blue,team=!Yellow] run clear @s crossbow[custom_data~{nova:1b}]
execute as @a[x=0] store result score @s HasFirework run clear @s firework_rocket 0
item replace entity @a[x=0,team=Yellow,scores={HasFirework=0}] hotbar.1 with firework_rocket[custom_name='{"text":"Celebratory Fireworks","color":"gold","bold":true,"italic":false}',can_place_on={predicates:[{blocks:"#custom:missileandbase"}],show_in_tooltip:0b},hide_additional_tooltip={},fireworks={explosions:[{shape:"large_ball",colors:[I;14602026,15435844],has_trail:true,has_twinkle:true}],flight_duration:3}] 5
item replace entity @a[x=0,team=Yellow] armor.chest with elytra[unbreakable={show_in_tooltip:0b},enchantments={levels:{binding_curse:1},show_in_tooltip:0b},enchantment_glint_override=false,attribute_modifiers={modifiers:[],show_in_tooltip:0b},custom_name='[{"text":"Elytra","color":"gold","bold":true,"italic":false}]'] 1
item replace entity @a[x=0,team=Blue] armor.head with blue_banner[enchantments={levels:{binding_curse:1},show_in_tooltip:0b},custom_name='{"text":"Flag of Shameful Loss","color":"blue","bold":true,"italic":false}',enchantment_glint_override=false,attribute_modifiers={modifiers:[],show_in_tooltip:0b},hide_additional_tooltip={},banner_patterns=[{color:"white",pattern:"half_horizontal"},{color:"white",pattern:"half_horizontal_bottom"},{color:"blue",pattern:"stripe_left"},{color:"blue",pattern:"stripe_bottom"},{color:"white",pattern:"stripe_left"},{color:"white",pattern:"stripe_bottom"},{color:"white",pattern:"stripe_right"},{color:"white",pattern:"square_top_left"}]] 1

##Effects
execute as @a[x=0] unless entity @s[team=!Blue,team=!Yellow] run effect clear @s slowness
execute as @a[x=0] unless entity @s[team=!Blue,team=!Yellow] run effect clear @s levitation
execute as @a[x=0] unless entity @s[team=!Blue,team=!Yellow] run effect clear @s wither
execute as @a[x=0] unless entity @s[team=!Blue,team=!Yellow] run effect clear @s blindness
execute as @a[x=0] unless entity @s[team=!Blue,team=!Yellow] run effect give @s regeneration 1 100 true
execute as @a[x=0,team=Blue] at @s run stopsound @s
execute as @a[x=0,team=Yellow] at @s run stopsound @s
execute if entity @s[tag=!BlueWonFirst] as @a[x=0,team=Yellow] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 100 0.85
execute if entity @s[tag=!BlueWonFirst] as @a[x=0,team=Blue] at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 100 2
title @a[x=0,team=!Lobby] title ["",{"text":"Team Yellow Won!","color":"yellow","bold":false}]

##Splashes
tag @a[x=0,team=Yellow] add Winner
tag @a[x=0,team=Blue] add Loser
execute as @a[x=0,tag=Winner,limit=1,sort=random] run function game:winsplash
execute as @a[x=0,tag=Loser,limit=1,sort=random] run function game:losesplash

##Remove UUID Tracker score
scoreboard objectives remove UUIDTracker
scoreboard objectives remove KillerUUID