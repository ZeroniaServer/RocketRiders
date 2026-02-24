execute unless score $tick global matches 1 run return fail

scoreboard players set $thread_finished global 0
execute in minecraft:overworld positioned 0.0 0.0 0.0 run function entities:simulate/rot
scoreboard players set $thread_finished global 1
