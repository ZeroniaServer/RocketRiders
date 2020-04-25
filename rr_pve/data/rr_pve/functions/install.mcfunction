execute unless entity @e[tag=rr_pve,limit=1] run summon armor_stand 23 216 -18 {Tags:["rr_pve"],Marker:1b,Invisible:1b,Invulnerable:1b,CustomNameVisible:0b}
scoreboard objectives add waveTimer dummy
execute if entity @e[tag=rr_pve,limit=1] run tellraw @s {"text":"PVE mode installed.","color":"green","bold":"true"}