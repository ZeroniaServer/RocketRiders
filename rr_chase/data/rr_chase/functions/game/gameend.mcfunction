clear @a[team=Blue] #custom:clear
clear @a[team=Blue] crossbow{nova:1b}
function rr_chase:game/overwrite
execute if entity @s[scores={endtimer=1}] as @a[team=Blue,tag=Winner,limit=1] unless entity @e[type=armor_stand,tag=chaseEnabled] run function game:saberblue
execute if entity @s[scores={endtimer=1}] run give @a[team=Blue,tag=Loser] bow{display:{Name:'{"translate":"Shooting Saber","color":"blue","bold":true,"italic":false}',Lore:['{"translate":"A weapon used for both"}','{"translate":"ranged and melee attacks"}']},HideFlags:4,Unbreakable:1b,Enchantments:[{id:"flame",lvl:1}]}
execute if entity @s[scores={endtimer=1}] run effect give @a[team=Blue,tag=Loser] weakness 1000000 255 true
execute if entity @s[scores={endtimer=1}] run function rr_chase:game/endstats
scoreboard players reset * FlagScore
execute if entity @s[scores={endtimer=1..}] run fill 13 74 68 7 64 61 moving_piston replace air
execute if entity @s[scores={endtimer=1..}] run bossbar set rr_chase:lead players none
execute if entity @s[scores={endtimer=1..}] run bossbar set rr_chase:lead name ["",{"text":"No one is in the lead!","color":"dark_red"}]
execute if entity @s[scores={endtimer=1..}] run bossbar set rr_chase:lead value 0
execute if entity @s[scores={endtimer=1..10}] run function rr_chase:chaseblocks/killall
tag @a[team=Blue] remove InLead
execute if entity @s[scores={endtimer=1..2}] run tp @a[team=Blue,tag=Loser] 12 64 -66 0 0
execute if entity @s[scores={endtimer=1..2}] run tp @a[team=Blue,tag=Winner,limit=1] 12 64 64 180 0