summon area_effect_cloud ~ ~-0.375 ~ {Tags:["endFireballAEC","new"]}
ride @s mount @e[x=0,type=area_effect_cloud,tag=endFireballAEC,tag=new,limit=1]
execute on vehicle run tag @s remove new
tag @s add endFireball
data merge entity @s {ExplosionPower:0,Motion:[0.0d,0.0d,0.0d],acceleration_power:0d}