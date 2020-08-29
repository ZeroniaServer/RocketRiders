#leave midgame
function game:leavemidgame

#Item RNG and spawnpoints
scoreboard players add @s RandomItem 1
execute if score @s[tag=!Minute] RandomItem = @s[tag=!Minute] MaxItemTime run function items:giverandom
execute if score @s[tag=!Minute] RandomItem > @s[tag=!Minute] MaxItemTime run scoreboard players reset @s RandomItem
spawnpoint @a[team=Blue] 12 64 -66 0
execute if entity @s[tag=Minute] run function items:minutemix

#overwrite vortex owner (makes these hostile towards team members)
execute as @a[team=Blue] at @s run tag @e[type=egg,sort=nearest,limit=1,distance=..5,tag=BlueVortex] add YellowVortex
execute as @a[team=Blue] at @s run tag @e[type=egg,sort=nearest,limit=1,distance=..5,tag=BlueVortex] remove BlueVortex

#TODO figure out how to do something like that for novas :(

#win
execute as @a[team=Blue] at @s if entity @s[x=-15,dx=54,y=33,dy=37,z=51,dz=28] run tag @s add Winner
execute if entity @a[team=Blue,tag=Winner] run tag @a[team=Blue,tag=!Winner] add Loser
execute if entity @a[team=Blue,tag=Winner] run function rr_chase:game/win