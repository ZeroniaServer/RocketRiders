execute unless entity @e[tag=rr_ctf,limit=1,type=armor_stand] run summon armor_stand 23 216 -18 {Tags:["rr_ctf"],Marker:1b,Invisible:1b,Invulnerable:1b,CustomNameVisible:0b}
scoreboard objectives add HasPickaxe dummy
scoreboard objectives add dropPickaxe minecraft.dropped:minecraft.netherite_pickaxe
scoreboard objectives add FlagScore dummy
scoreboard objectives add FlagDisp dummy ["",{"text":"Flag Count ","color":"green","bold":"true"},{"text":"/ 2","color":"red"}]
execute if entity @e[tag=rr_ctf,limit=1,type=armor_stand] run tellraw @s {"text":"Capture the Flag Mode installed.","color":"green","bold":"true"}