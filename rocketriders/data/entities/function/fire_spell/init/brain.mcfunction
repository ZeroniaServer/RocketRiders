## Mount body
ride @s mount @e[distance=..0.01,limit=1,type=small_fireball,tag=fire_spell.this]

## Set up data
data modify entity @s data.fire_spell set value {brain:{}}

data modify entity @s Owner set from storage rocketriders:main fire_spell.origin
