kill @e[type=bee]
execute as @e[tag=BeeShield,type=area_effect_cloud] at @s run fill ~-2 ~-4 ~ ~2 ~4 ~ air
kill @e[tag=BeeShield,type=area_effect_cloud]
kill @e[tag=BeeShieldDisplay,type=armor_stand]
kill @e[tag=animBshield,type=area_effect_cloud]
scoreboard players reset $beetime BeeShieldTime