clear @a[predicate=custom:indimension,team=Blue] #custom:clear
clear @a[predicate=custom:indimension,team=Blue] crossbow{nova:1b}
function rr_chase:game/overwrite
execute if entity @s[scores={endtimer=1}] as @a[predicate=custom:indimension,team=Blue,tag=Winner,limit=1] if entity @e[type=armor_stand,tag=chaseEnabled] run function rr_chase:chasegear/givegear
execute if entity @s[scores={endtimer=1}] as @a[predicate=custom:indimension,team=Blue,tag=Winner,limit=1] if entity @e[type=armor_stand,tag=chaseEnabled] run item replace entity @s armor.chest with elytra{HideFlags:127,Enchantments:[{id:"binding_curse",lvl:1}],Unbreakable:1b,display:{Name:'[{"text":"Elytra","color":"blue","bold":true,"italic":false}]'}} 1
execute if entity @s[scores={endtimer=1}] as @a[predicate=custom:indimension,team=Blue,tag=Loser] run function rr_chase:chasegear/losesaber
execute if entity @s[scores={endtimer=1}] run effect give @a[predicate=custom:indimension,team=Blue,tag=Loser] weakness infinite 255 true
execute if entity @s[scores={endtimer=1}] run function rr_chase:game/endstats
scoreboard players reset * FlagScore
execute if entity @s[scores={endtimer=1..}] run fill 13 74 68 7 64 61 moving_piston replace air
execute if entity @s[scores={endtimer=1..}] run bossbar set rr_chase:lead players none
execute if entity @s[scores={endtimer=1..}] run bossbar set rr_chase:lead name ["",{"text":"No one is in the lead!","color":"red"}]
execute if entity @s[scores={endtimer=1..}] run bossbar set rr_chase:lead value 0
execute if entity @s[scores={endtimer=1..10}] run function rr_chase:chaseblocks/killall
tag @a[predicate=custom:indimension,team=Blue] remove InLead
execute if entity @s[scores={endtimer=1..2}] run tp @a[predicate=custom:indimension,team=Blue,tag=Loser] 12 64 -66 0 0
execute if entity @s[scores={endtimer=1..2}] run tp @a[predicate=custom:indimension,team=Blue,tag=Winner,limit=1] 12 64 64 180 0