tellraw @a[limit=1,tag=spawn_egg.placer] {color:"red",text:"Invalid spawn egg type"}
tag @a[limit=1,tag=spawn_egg.placer] remove spawn_egg.placer
kill @s
