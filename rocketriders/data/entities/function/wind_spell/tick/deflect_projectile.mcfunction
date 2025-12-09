data modify storage rocketriders:main wind_spell.motion set from entity @s Motion
execute store result storage rocketriders:main wind_spell.motion[0] double 0.00105 run data get storage rocketriders:main wind_spell.motion[0] -1000
execute store result storage rocketriders:main wind_spell.motion[1] double 0.00105 run data get storage rocketriders:main wind_spell.motion[1] -1000
execute store result storage rocketriders:main wind_spell.motion[2] double 0.00105 run data get storage rocketriders:main wind_spell.motion[2] -1000
data modify entity @s Motion set from storage rocketriders:main wind_spell.motion

# add a little more time to ICBMs
execute if predicate entities:type/icbm/body on passengers run scoreboard players remove @s[predicate=entities:type/icbm/brain] entity.age 10

return 1
