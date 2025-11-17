# Get target angle
scoreboard players set $offset var 360
scoreboard players operation $offset var *= @s entity.vortex_arm.index
execute on origin run scoreboard players operation $offset var /= @s entity.vortex.arms
execute on origin run scoreboard players operation $angle var = @s entity.age
execute if entity @s[tag=vortex_arm.transitioning] run scoreboard players add $angle var 5
execute unless entity @s[tag=vortex_arm.feathered] run scoreboard players set $spin_speed constant 18
execute if entity @s[tag=vortex_arm.feathered] run scoreboard players set $spin_speed constant 15
scoreboard players operation $angle var *= $spin_speed constant
scoreboard players operation $angle var += $offset var
scoreboard players operation $angle var %= $360 constant

# sin
scoreboard players operation $sin_angle var = $angle var
execute store success score $flip var if score $sin_angle var matches 180..359
execute if score $flip var matches 1 run scoreboard players remove $sin_angle var 180
scoreboard players remove $sin_angle var 90
scoreboard players set $sin var -4000
scoreboard players operation $sin var *= $sin_angle var
scoreboard players operation $sin var *= $sin_angle var
scoreboard players add $sin var 32400000
scoreboard players operation $u var = $sin_angle var
scoreboard players operation $u var *= $sin_angle var
scoreboard players add $u var 32400
execute if score $flip var matches 1 run scoreboard players operation $sin var *= $-1 constant
execute store result storage rocketriders:main vortex_arm.sin float 0.0005 run scoreboard players operation $sin var /= $u var

# cos
scoreboard players operation $cos_angle var = $angle var
execute store success score $flip var if score $cos_angle var matches 90..269
execute if score $flip var matches 1 run scoreboard players remove $cos_angle var 180
scoreboard players add $cos_angle var 90
scoreboard players operation $cos_angle var %= $180 constant
scoreboard players remove $cos_angle var 90
scoreboard players set $cos var -4000
scoreboard players operation $cos var *= $cos_angle var
scoreboard players operation $cos var *= $cos_angle var
scoreboard players add $cos var 32400000
scoreboard players operation $u var = $cos_angle var
scoreboard players operation $u var *= $cos_angle var
scoreboard players add $u var 32400
execute if score $flip var matches 1 run scoreboard players operation $cos var *= $-1 constant
execute store result storage rocketriders:main vortex_arm.cos float 0.0005 run scoreboard players operation $cos var /= $u var
