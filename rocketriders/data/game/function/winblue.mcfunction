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
execute as @a[x=0] unless entity @s[team=!Blue,team=!Yellow] run clear @s #custom:clear
execute as @a[x=0] unless entity @s[team=!Blue,team=!Yellow] run clear @s crossbow[custom_data~{nova:1b}]
execute as @a[x=0] store result score @s HasFirework run clear @s firework_rocket 0
item replace entity @a[x=0,team=Blue,scores={HasFirework=0}] hotbar.1 with firework_rocket[custom_name='{"text":"Celebratory Fireworks","color":"blue","bold":true,"italic":false}',can_place_on={predicates:[{blocks:"#custom:missileandbase"}],show_in_tooltip:0b},hide_additional_tooltip={},fireworks={explosions:[{shape:"large_ball",colors:[I;2437522,2651799],has_trail:true,has_twinkle:true}],flight_duration:3}] 5
execute if entity @s[scores={servermode=0},tag=!SMCustom] run item replace entity @a[x=0,team=Blue] armor.chest with elytra[unbreakable={show_in_tooltip:0b},enchantments={levels:{binding_curse:1},show_in_tooltip:0b},enchantment_glint_override=true,custom_name='[{"text":"Elytra","color":"blue","bold":true,"italic":false}]'] 1
execute unless entity @s[scores={servermode=0},tag=!SMCustom] run item replace entity @a[x=0,team=Blue] armor.chest with elytra[unbreakable={show_in_tooltip:0b},custom_name='[{"text":"Elytra","color":"blue","bold":true,"italic":false}]',enchantments={show_in_tooltip:0b},enchantment_glint_override=true] 1
item replace entity @a[x=0,team=Yellow] armor.head with yellow_banner[enchantments={levels:{binding_curse:1},show_in_tooltip:0b},enchantment_glint_override=true,custom_name='{"text":"Flag of Shameful Loss","color":"gold","bold":true,"italic":false}',hide_additional_tooltip={},banner_patterns=[{color:"white",pattern:"half_horizontal"},{color:"white",pattern:"half_horizontal_bottom"},{color:"red",pattern:"stripe_left"},{color:"red",pattern:"stripe_bottom"},{color:"white",pattern:"stripe_left"},{color:"white",pattern:"stripe_bottom"},{color:"white",pattern:"stripe_right"},{color:"white",pattern:"square_top_left"}]] 1

##Effects
execute as @a[x=0] unless entity @s[team=!Blue,team=!Yellow] run effect clear @s slowness
execute as @a[x=0] unless entity @s[team=!Blue,team=!Yellow] run effect clear @s levitation
execute as @a[x=0] unless entity @s[team=!Blue,team=!Yellow] run effect clear @s wither
execute as @a[x=0] unless entity @s[team=!Blue,team=!Yellow] run effect clear @s blindness
execute as @a[x=0] unless entity @s[team=!Blue,team=!Yellow] run effect give @s regeneration 1 100 true
execute as @a[x=0,team=Blue] at @s run stopsound @s
execute as @a[x=0,team=Yellow] at @s run stopsound @s
execute if entity @s[tag=!YellowWonFirst] as @a[x=0,team=Blue] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 100 0.85
execute if entity @s[tag=!YellowWonFirst] as @a[x=0,team=Yellow] at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 100 2
title @a[x=0,team=!Lobby] title ["",{"text":"Team Blue Won!","color":"blue","bold":false}]

##Splashes
tag @a[x=0,team=Blue] add Winner
tag @a[x=0,team=Yellow] add Loser
execute as @a[x=0,tag=Winner,limit=1,sort=random] run function game:winsplash
execute as @a[x=0,tag=Loser,limit=1,sort=random] run function game:losesplash

##Remove UUID Tracker score
scoreboard objectives remove UUIDTracker
scoreboard objectives remove KillerUUID