## Mount brain
ride @s mount @e[distance=..0.01,limit=1,type=area_effect_cloud,tag=canopy.this]

## Set up data
data modify entity @s data.canopy set value {saddle:{}}

data merge entity @s {height:1.5,width:0}
