#Kill when shot
execute as @e[type=end_crystal,tag=ChaseCrystal2] at @s as @e[type=arrow,nbt={inGround:0b},distance=..4] at @s positioned ^ ^ ^2 run tag @e[type=end_crystal,tag=ChaseCrystal2,limit=1,distance=..2] add KillCrystal
execute as @e[type=end_crystal,tag=KillCrystal] at @s run kill @e[type=arrow,nbt={inGround:0b},distance=..4,sort=nearest]
execute as @e[type=end_crystal,tag=KillCrystal] at @s run particle explosion ~ ~ ~ 0.2 0.2 0.2 0.1 4 force
execute as @e[type=end_crystal,tag=KillCrystal] at @s run playsound block.glass.break master @a ~ ~ ~ 1 0
execute as @e[type=end_crystal,tag=KillCrystal] at @s run playsound minecraft:entity.shulker_bullet.hurt master @a ~ ~ ~ 1 0.8
execute as @e[type=end_crystal,tag=KillCrystal] at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 1.3
execute as @e[type=end_crystal,tag=KillCrystal] at @s run tag @e[type=armor_stand,tag=ChaseCrystal,distance=..2,limit=1,sort=nearest] add KillCrystal
kill @e[type=end_crystal,tag=KillCrystal]
kill @e[type=armor_stand,tag=KillCrystal]