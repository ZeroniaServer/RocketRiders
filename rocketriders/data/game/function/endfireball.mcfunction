summon item_display ~ ~ ~ {Tags:["endFireballAnchor","new"]}
ride @s mount @e[x=0,type=item_display,tag=endFireballAnchor,tag=new,limit=1]
execute on vehicle run tag @s remove new
tag @s add endFireball
data merge entity @s {ExplosionPower:0,Motion:[0.0d,0.0d,0.0d],acceleration_power:0d}