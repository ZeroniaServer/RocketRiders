##by NOPEname

# calculate new health
scoreboard players operation @s nnhealth = @s nnhealth_real
scoreboard players operation @s nnhealth += @s nnhealth_mod
execute if score @s nnhealth > @s nnhealth_max run scoreboard players operation @s nnhealth = @s nnhealth_max

# apply health
execute unless score @s nnhealth matches ..0 run function nnhealth:zz_private/update_health

#TODO: SET ACTUAL LOBBY SPAWNPOINT HERE
execute if score @s nnhealth matches ..0 run scoreboard players set @s nnhealth_max 20

# reset modifier score
scoreboard players set @s nnhealth_mod 0