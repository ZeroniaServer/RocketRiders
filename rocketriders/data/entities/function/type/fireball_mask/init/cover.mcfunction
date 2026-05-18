## Mount body
ride @s mount @e[distance=..0.01,limit=1,type=interaction,tag=fireball_mask.this]

## Set up data
data modify entity @s data.fireball_mask set value {cover:{}}
data merge entity @s {Invulnerable:true,width:3.02,height:-3.02}
