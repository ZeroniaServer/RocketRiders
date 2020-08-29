summon armor_stand 38 63 -66 {Tags:["machinacheck"],NoGravity:1b,Invisible:1b}
scoreboard players add @e[tag=machinacheck,type=armor_stand] Machina 0
execute as @e[tag=machinacheck,type=armor_stand,limit=1] at @s run function custom:machinablue_test