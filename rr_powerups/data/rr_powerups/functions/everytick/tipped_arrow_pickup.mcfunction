##Overhauls default arrow pickup system to give custom named tipped arrows
#Pickup conditions
execute as @e[type=arrow,scores={arrowtime=10..}] if data entity @s CustomPotionEffects at @s if entity @p[team=!Spectator,distance=..2] run tag @s add pickup

#Give appropriate tipped arrow
execute as @e[type=arrow,tag=pickup,tag=!tippedpickup,nbt={CustomPotionEffects:[{Id:15b}]}] at @s run give @p[team=!Spectator,distance=..2] tipped_arrow{display:{Name:'{"text":"Blindness Arrow","color":"dark_purple","italic":"true","bold":"true"}'},CustomPotionEffects:[{Id:15b,Amplifier:0b,Duration:200,ShowParticles:1b}],CustomPotionColor:3158064,HideFlags:63}
execute as @e[type=arrow,tag=pickup,tag=!tippedpickup,nbt={CustomPotionEffects:[{Id:25b}]}] at @s run give @p[team=!Spectator,distance=..2] tipped_arrow{display:{Name:'{"text":"Levitation Arrow","color":"dark_purple","italic":"true","bold":"true"}'},CustomPotionEffects:[{Id:25b,Amplifier:0b,Duration:100,ShowParticles:1b}],CustomPotionColor:11793919,HideFlags:63}
execute as @e[type=arrow,tag=pickup,tag=!tippedpickup,nbt={CustomPotionEffects:[{Id:2b}]}] at @s run give @p[team=!Spectator,distance=..2] tipped_arrow{display:{Name:'{"text":"Slowness Arrow","color":"dark_purple","italic":"true","bold":"true"}'},CustomPotionEffects:[{Id:2b,Amplifier:1b,Duration:200,ShowParticles:1b}],CustomPotionColor:5596802,HideFlags:63}
execute as @e[type=arrow,tag=pickup,tag=!tippedpickup,nbt={CustomPotionEffects:[{Id:20b}]}] at @s run give @p[team=!Spectator,distance=..2] tipped_arrow{display:{Name:'{"text":"Wither Arrow","color":"dark_purple","italic":"true","bold":"true"}'},CustomPotionEffects:[{Id:20b,Amplifier:0b,Duration:100,ShowParticles:1b}],CustomPotionColor:4008735,HideFlags:63}

#Hotfix because bad tick order
execute as @e[type=arrow,scores={arrowtime=10..}] if data entity @s CustomPotionEffects at @s if entity @p[team=!Spectator,distance=..2] run tag @s add tippedpickup