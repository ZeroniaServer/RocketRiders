execute unless entity @e[tag=rr_ctf,limit=1,type=armor_stand] run summon armor_stand 23 216 -18 {Tags:["rr_ctf"],Marker:1b,Invisible:1b,Invulnerable:1b,CustomNameVisible:0b}
scoreboard objectives add HasDiaPickaxe dummy
scoreboard objectives add dropPickaxe minecraft.dropped:minecraft.diamond_pickaxe
scoreboard objectives add FlagScore dummy
execute if entity @e[tag=rr_ctf,limit=1,type=armor_stand] run tellraw @s {"text":"Capture the Flag Mode installed.","color":"green","bold":"true"}