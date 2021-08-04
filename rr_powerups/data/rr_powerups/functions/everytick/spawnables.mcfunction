#utility functions
execute if entity @a[scores={DrinkHoney=1..}] run tag @s add runbeeshields
execute if entity @e[type=armor_stand,tag=BeeShieldDisplay] run tag @s add runbeeshields
execute if entity @e[type=marker,tag=animBshield] run tag @s add runbeeshields
execute if entity @e[type=bee] run tag @s add runbeeshields
execute if entity @s[tag=runbeeshields] run function rr_powerups:everytick/bee_shield
tag @s remove runbeeshields
clear @a glass_bottle
execute if entity @e[type=bee] run function rr_powerups:everytick/init_kill_bees

function rr_powerups:everytick/lava_splash