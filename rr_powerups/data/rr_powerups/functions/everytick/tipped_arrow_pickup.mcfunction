##Overhauls default arrow pickup system to give custom named tipped arrows
#Pickup conditions
execute as @a[team=!Spectator] at @s as @e[type=arrow,scores={arrowtime=10..},nbt={inGround:1b},limit=1,distance=..2,sort=nearest] if data entity @s CustomPotionEffects run tag @s add pickup

#Give appropriate tipped arrow
execute as @a[team=!Spectator,tag=!fullOffhand] at @s as @e[type=arrow,tag=pickup,tag=!tippedpickup,limit=1,distance=..2,sort=nearest] if data entity @s CustomPotionEffects at @s run function rr_powerups:everytick/tipped_arrow_replace
execute as @e[type=arrow,tag=pickup,tag=!tippedpickup,tag=!given,nbt={CustomPotionEffects:[{Id:15}]}] at @s run give @p[team=!Spectator,distance=..2,tag=fullOffhand] tipped_arrow{display:{Name:'{"text":"Blindness Arrow","color":"dark_purple","italic":true,"bold":true}'},CustomPotionEffects:[{Id:15,Amplifier:0b,Duration:200,ShowParticles:1b}],CustomPotionColor:3158064,HideFlags:63}
execute as @e[type=arrow,tag=pickup,tag=!tippedpickup,tag=!given,nbt={CustomPotionEffects:[{Id:25}]}] at @s run give @p[team=!Spectator,distance=..2,tag=fullOffhand] tipped_arrow{display:{Name:'{"text":"Levitation Arrow","color":"dark_purple","italic":true,"bold":true}'},CustomPotionEffects:[{Id:25,Amplifier:0b,Duration:100,ShowParticles:1b}],CustomPotionColor:11793919,HideFlags:63}
execute as @e[type=arrow,tag=pickup,tag=!tippedpickup,tag=!given,nbt={CustomPotionEffects:[{Id:2}]}] at @s run give @p[team=!Spectator,distance=..2,tag=fullOffhand] tipped_arrow{display:{Name:'{"text":"Slowness Arrow","color":"dark_purple","italic":true,"bold":true}'},CustomPotionEffects:[{Id:2,Amplifier:1b,Duration:200,ShowParticles:1b}],CustomPotionColor:5596802,HideFlags:63}
execute as @e[type=arrow,tag=pickup,tag=!tippedpickup,tag=!given,nbt={CustomPotionEffects:[{Id:20}]}] at @s run give @p[team=!Spectator,distance=..2,tag=fullOffhand] tipped_arrow{display:{Name:'{"text":"Wither Arrow","color":"dark_purple","italic":true,"bold":true}'},CustomPotionEffects:[{Id:20,Amplifier:2b,Duration:150,ShowParticles:1b}],CustomPotionColor:4008735,HideFlags:63}

#Hotfix because bad tick order
execute as @a[team=!Spectator] at @s as @e[type=arrow,scores={arrowtime=10..},nbt={inGround:1b},limit=1,distance=..2,sort=nearest] if data entity @s CustomPotionEffects run tag @s add tippedpickup