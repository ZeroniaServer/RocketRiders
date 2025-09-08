execute on attacker if entity @s[tag=match_attacker] run return 1
execute unless score @s primary_damage_origin_uuid.0 matches -2147483648.. unless score @s secondary_damage_origin_uuid.0 matches -2147483648.. run return fail

data modify storage rocketriders:main match_attacker set value {primary:[I;0,0,0,0],secondary:[I;0,0,0,0]}
execute if score @s primary_damage_origin_uuid.0 matches -2147483648.. store result storage rocketriders:main match_attacker.primary[0] int 1 run scoreboard players get @s primary_damage_origin_uuid.0
execute if score @s primary_damage_origin_uuid.0 matches -2147483648.. store result storage rocketriders:main match_attacker.primary[1] int 1 run scoreboard players get @s primary_damage_origin_uuid.1
execute if score @s primary_damage_origin_uuid.0 matches -2147483648.. store result storage rocketriders:main match_attacker.primary[2] int 1 run scoreboard players get @s primary_damage_origin_uuid.2
execute if score @s primary_damage_origin_uuid.0 matches -2147483648.. store result storage rocketriders:main match_attacker.primary[3] int 1 run scoreboard players get @s primary_damage_origin_uuid.3
scoreboard players set $matches_uuid var 0
execute if score @s primary_damage_origin_uuid.0 matches -2147483648.. run function custom:target_uuid {read_from:"storage rocketriders:main match_attacker.primary",run:"execute if entity @s[tag=match_attacker] run scoreboard players set $matches_uuid var 1"}
execute if score $matches_uuid var matches 1 run return 1

execute if score @s secondary_damage_origin_uuid.0 matches -2147483648.. store result storage rocketriders:main match_attacker.secondary[0] int 1 run scoreboard players get @s secondary_damage_origin_uuid.0
execute if score @s secondary_damage_origin_uuid.0 matches -2147483648.. store result storage rocketriders:main match_attacker.secondary[1] int 1 run scoreboard players get @s secondary_damage_origin_uuid.1
execute if score @s secondary_damage_origin_uuid.0 matches -2147483648.. store result storage rocketriders:main match_attacker.secondary[2] int 1 run scoreboard players get @s secondary_damage_origin_uuid.2
execute if score @s secondary_damage_origin_uuid.0 matches -2147483648.. store result storage rocketriders:main match_attacker.secondary[3] int 1 run scoreboard players get @s secondary_damage_origin_uuid.3
scoreboard players set $matches_uuid var 0
execute if score @s secondary_damage_origin_uuid.0 matches -2147483648.. run function custom:target_uuid {read_from:"storage rocketriders:main match_attacker.secondary",run:"execute if entity @s[tag=match_attacker] run scoreboard players set $matches_uuid var 1"}
execute if score $matches_uuid var matches 1 run return 1

return fail
