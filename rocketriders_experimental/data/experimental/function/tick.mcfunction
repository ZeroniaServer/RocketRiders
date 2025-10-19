scoreboard players reset @a[predicate=!custom:indimension] options
execute as @a[scores={options=..-1}] run dialog clear @s
execute as @a[scores={options=1..}] run function experimental:options/main
scoreboard players reset @a options
scoreboard players enable @a[predicate=custom:indimension] options
