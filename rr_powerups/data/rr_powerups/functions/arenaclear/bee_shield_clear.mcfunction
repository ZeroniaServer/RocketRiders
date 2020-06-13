kill @e[type=bee]
execute as @e[tag=BeeShield] at @s run fill ~-2 ~-2 ~ ~2 ~2 ~ air replace bee_nest
execute as @e[tag=BeeShield] at @s run fill ~-2 ~-2 ~ ~2 ~2 ~ air replace tnt
kill @e[tag=BeeShield]
kill @e[tag=BeeShieldDisplay]
kill @e[tag=animBshield]