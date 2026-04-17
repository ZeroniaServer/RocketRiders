# arguments: run

$execute on attacker if entity @s[type=player] run return run $(run)

data modify storage rocketriders:main target_attackers set value {primary:[I;0,0,0,0],secondary:[I;0,0,0,0]}

scoreboard players set $attacker_contains_damage_origin var 0
execute on attacker if predicate custom:entity/has_damage_origin run scoreboard players set $attacker_contains_damage_origin var 1
execute if score $attacker_contains_damage_origin var matches 1 on attacker run data modify storage rocketriders:main target_attackers set from entity @s data.damage_origin
execute if score $attacker_contains_damage_origin var matches 1 if data storage rocketriders:main target_attackers.primary run function custom:target_uuid {read_from:"storage rocketriders:main target_attackers.primary",run:"tag @s[type=player] add target_attackers.this"}
execute if score $attacker_contains_damage_origin var matches 1 if data storage rocketriders:main target_attackers.secondary run function custom:target_uuid {read_from:"storage rocketriders:main target_attackers.secondary",run:"tag @s[type=player] add target_attackers.this"}
execute if score $attacker_contains_damage_origin var matches 0 if score @s primary_damage_origin_uuid.0 matches -2147483648.. run execute store result storage rocketriders:main target_attackers.primary[0] int 1 run scoreboard players get @s primary_damage_origin_uuid.0
execute if score $attacker_contains_damage_origin var matches 0 if score @s primary_damage_origin_uuid.0 matches -2147483648.. run execute store result storage rocketriders:main target_attackers.primary[1] int 1 run scoreboard players get @s primary_damage_origin_uuid.1
execute if score $attacker_contains_damage_origin var matches 0 if score @s primary_damage_origin_uuid.0 matches -2147483648.. run execute store result storage rocketriders:main target_attackers.primary[2] int 1 run scoreboard players get @s primary_damage_origin_uuid.2
execute if score $attacker_contains_damage_origin var matches 0 if score @s primary_damage_origin_uuid.0 matches -2147483648.. run execute store result storage rocketriders:main target_attackers.primary[3] int 1 run scoreboard players get @s primary_damage_origin_uuid.3
execute if score $attacker_contains_damage_origin var matches 0 if score @s primary_damage_origin_uuid.0 matches -2147483648.. run function custom:target_uuid {read_from:"storage rocketriders:main target_attackers.primary",run:"tag @s[type=player] add target_attackers.this"}
execute if score $attacker_contains_damage_origin var matches 0 if score @s secondary_damage_origin_uuid.0 matches -2147483648.. run execute store result storage rocketriders:main target_attackers.secondary[0] int 1 run scoreboard players get @s secondary_damage_origin_uuid.0
execute if score $attacker_contains_damage_origin var matches 0 if score @s secondary_damage_origin_uuid.0 matches -2147483648.. run execute store result storage rocketriders:main target_attackers.secondary[1] int 1 run scoreboard players get @s secondary_damage_origin_uuid.1
execute if score $attacker_contains_damage_origin var matches 0 if score @s secondary_damage_origin_uuid.0 matches -2147483648.. run execute store result storage rocketriders:main target_attackers.secondary[2] int 1 run scoreboard players get @s secondary_damage_origin_uuid.2
execute if score $attacker_contains_damage_origin var matches 0 if score @s secondary_damage_origin_uuid.0 matches -2147483648.. run execute store result storage rocketriders:main target_attackers.secondary[3] int 1 run scoreboard players get @s secondary_damage_origin_uuid.3
execute if score $attacker_contains_damage_origin var matches 0 if score @s secondary_damage_origin_uuid.0 matches -2147483648.. run function custom:target_uuid {read_from:"storage rocketriders:main target_attackers.secondary",run:"tag @s[type=player] add target_attackers.this"}

$execute as @a[limit=2,x=0,tag=target_attackers.this] if function custom:__impl__/target_attackers/remove_tag run $(run)
