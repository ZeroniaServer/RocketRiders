execute unless entity @e[tag=rr_normal,limit=1] run summon armor_stand 23 216 -18 {Tags:["rr_normal"],Marker:1b,Invisible:1b,Invulnerable:1b,CustomNameVisible:0b}
execute if entity @e[tag=rr_normal,limit=1] run tellraw @s {"text":"Normal mode installed.","color":"green","bold":"true"}