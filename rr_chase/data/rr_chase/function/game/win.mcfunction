##Achievements
execute if entity @s[scores={servermode=0},tag=!realms,tag=!SMCustom] run function rr_chase:achievements/aftergame

##Record tags
tag @s add GameEnd

##Celebratory items
clear @a[x=0,team=Blue] #custom:clear
clear @a[x=0,team=Blue] crossbow[custom_data={nova:1b}]
execute as @a[x=0] store result score @s HasFirework run clear @s firework_rocket 0
item replace entity @a[x=0,team=Blue,tag=Winner,scores={HasFirework=0},limit=1] hotbar.1 with minecraft:firework_rocket[custom_name='{"text":"Celebratory Fireworks","color":"white","bold":true,"italic":false}',fireworks={flight_duration:3,explosions:[{shape:"large_ball",colors:[I;15790320],fade_colors:[I;11743532,3887386,2437522,8073150,2651799,14188952,4312372,14602026,6719955,12801229,15435844],has_trail:true,has_twinkle:true}]},can_place_on={predicates:[{blocks:"#custom:missileandbase"}],show_in_tooltip:0b},hide_additional_tooltip={}] 5
item replace entity @a[x=0,team=Blue,tag=Winner,limit=1] armor.chest with minecraft:elytra[enchantments={levels:{binding_curse:1},show_in_tooltip:0b},enchantment_glint_override=false,unbreakable={show_in_tooltip:0b},custom_name='[{"text":"Elytra","color":"blue","bold":true,"italic":false}]',hide_additional_tooltip={}] 1
execute as @a[x=0] store result score @s HasFlag run clear @s #banners 0
item replace entity @a[x=0,team=Blue,tag=Loser,scores={HasFlag=0}] armor.head with minecraft:blue_banner[custom_name='{"text":"Flag of Shameful Loss","color":"blue","bold":true,"italic":false}',banner_patterns=[{pattern:"half_horizontal",color:"white"},{pattern:"half_horizontal_bottom",color:"white"},{pattern:"stripe_left",color:"blue"},{pattern:"stripe_bottom",color:"blue"},{pattern:"stripe_left",color:"white"},{pattern:"stripe_bottom",color:"white"},{pattern:"stripe_right",color:"white"},{pattern:"square_top_left",color:"white"}],enchantments={levels:{binding_curse:1},show_in_tooltip:0b},enchantment_glint_override=false,attribute_modifiers={modifiers:[],show_in_tooltip:0b},hide_additional_tooltip={}] 1
#I Am Speed achievement for Winner
execute if entity @s[scores={servermode=0},tag=!realms,tag=!SMCustom] run advancement grant @a[x=0,team=Blue,tag=Winner,limit=1] only achievements:rr_challenges/speed

##Effects
execute as @a[x=0,team=Blue] run effect clear @s slowness
execute as @a[x=0,team=Blue] run effect clear @s levitation
execute as @a[x=0,team=Blue] run effect clear @s wither
execute as @a[x=0,team=Blue] run effect clear @s blindness
execute as @a[x=0,team=Blue] run effect give @s regeneration 1 100 true
execute as @a[x=0,team=Blue] at @s run stopsound @s
execute as @a[x=0,team=Blue,tag=Winner] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 100 0.85
execute as @a[x=0,team=Blue,tag=Loser] at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 100 2
title @a[x=0] times 10 80 20
execute unless score $skiptitles CmdData matches 1 run title @a[x=0,team=!Lobby] title ["",{"selector":"@a[x=0,team=Blue,tag=Winner,limit=1]","color":"dark_red"},{"text":" Won!","color":"red"}]
tellraw @a[x=0] ["",{"selector":"@a[x=0,team=Blue,tag=Winner,limit=1]","color":"dark_red","bold":true},{"text":" Won!","color":"red","bold":true}]

##Splashes
execute as @a[x=0,team=Blue,tag=Winner,limit=1,sort=random] run function rr_chase:game/winsplash
execute as @a[x=0,team=Blue,tag=Loser,limit=1,sort=random] run function rr_chase:game/losesplash