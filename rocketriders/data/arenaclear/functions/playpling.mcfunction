##Plays pling sound for game start after a delay
execute as @a[tag=playpling] at @s run playsound entity.player.levelup master @s ~ ~ ~ 2 1.5 1
tag @a remove playpling