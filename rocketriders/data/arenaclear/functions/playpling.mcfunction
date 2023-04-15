##Plays pling sound for game start after a delay
stopsound @a[predicate=custom:indimension,tag=playpling]
execute as @a[predicate=custom:indimension,tag=playpling] at @s run playsound entity.player.levelup master @s ~ ~ ~ 2 1.5 1
tag @a[predicate=custom:indimension] remove playpling