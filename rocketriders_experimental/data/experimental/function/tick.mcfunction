dialog clear @a[scores={settings=..-1}]
execute as @a[scores={settings=1..}] run function experimental:settings/main
scoreboard players reset @a[x=0] settings
execute in minecraft:overworld run scoreboard players enable @a[x=0] settings
