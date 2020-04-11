#Advancements
function challenges:aftergameblue
function challenges:aftergame
 
#Win stuff
tag @e[tag=Selection] add GameEnd
execute as @a unless entity @s[team=!Blue,team=!Yellow] run clear @s #custom:clear
give @a[team=Blue] firework_rocket{Fireworks:{Flight:3,Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;2437522,2651799]}]}} 5
tp @a[team=Blue] 12 64 -66 0 0
tp @a[team=Yellow] 12 64 66 180 0
execute as @a unless entity @s[team=!Blue,team=!Yellow] run effect clear @s slowness
execute as @a unless entity @s[team=!Blue,team=!Yellow] run effect clear @s levitation
execute as @a unless entity @s[team=!Blue,team=!Yellow] run effect clear @s poison
execute as @a unless entity @s[team=!Blue,team=!Yellow] run effect clear @s blindness
execute as @a unless entity @s[team=!Blue,team=!Yellow] run effect give @s resistance 13 100 true
execute as @a unless entity @s[team=!Blue,team=!Yellow] run effect give @s regeneration 1 255 true
execute as @a[team=Blue] at @s run stopsound @s
execute as @a[team=Yellow] at @s run stopsound @s
execute as @a[team=Blue] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 100 0.85
execute as @a[team=Yellow] at @s run playsound minecraft:entity.wither.spawn master @a[team=Yellow] ~ ~ ~ 100 2
title @a title ["",{"text":"Team Blue Won!","color":"blue","bold":true}]
title @a[team=Yellow] subtitle ["",{"text":"Better luck next time!","color":"red","bold":true}]
title @a[team=Blue] subtitle ["",{"text":"Take some time to celebrate!","color":"green","bold":true}]

#Calculate bonus XP for blue and XP loss for yellow
scoreboard players set @a[team=Blue] bonusXP 20
tag @a[team=Blue] add CalculateWin

#Reset spawn scores
scoreboard players set @a AuxSpawned 0
scoreboard players set @a AntsSpawned 0
scoreboard players set @a BladeSpawned 0
scoreboard players set @a BulletSpawned 0
scoreboard players set @a CataSpawned 0
scoreboard players set @a CitaSpawned 0
scoreboard players set @a FireballSpawned 0
scoreboard players set @a GemiSpawned 0
scoreboard players set @a GuardSpawned 0
scoreboard players set @a HurSpawned 0
scoreboard players set @a HyperSpawned 0
scoreboard players set @a JugbSpawned 0
scoreboard players set @a NullSpawned 0
scoreboard players set @a RifterSpawned 0
scoreboard players set @a SlashSpawned 0
scoreboard players set @a ThunSpawned 0
scoreboard players set @a TomaSpawned 0
scoreboard players set @a WarSpawned 0
scoreboard players set @a FellVoid 0
scoreboard players set @a jumps 0