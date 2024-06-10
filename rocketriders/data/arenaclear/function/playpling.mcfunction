##Plays pling sound for game start after a delay
stopsound @a[x=0,tag=playpling]
execute as @a[x=0,tag=playpling] at @s run playsound entity.player.levelup master @s ~ ~ ~ 2 1.5 1
tag @a[x=0] remove playpling