## Mount body
ride @s mount @e[distance=..0.01,limit=1,type=breeze_wind_charge,tag=wind_spell.this]

## Set up data
data modify entity @s data.wind_spell set value {brain:{}}

data modify entity @s Owner set from storage rocketriders:main wind_spell.origin
