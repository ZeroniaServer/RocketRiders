#Kill when shot
execute as @e[tag=ChaseCrystal2] at @s if entity @e[type=arrow,distance=..1.75] run tag @s add KillCrystal
execute as @e[tag=KillCrystal] at @s run particle explosion ~ ~ ~ 0.2 0.2 0.2 0.1 4 force
execute as @e[tag=KillCrystal] at @s run playsound block.glass.break master @a ~ ~ ~ 1 0
execute as @e[tag=KillCrystal] at @s run playsound minecraft:entity.shulker_bullet.hurt master @s ~ ~ ~ 1 0.8
execute as @e[tag=KillCrystal] at @s run playsound minecraft:entity.generic.explode master @s ~ ~ ~ 1 1.3
execute as @e[tag=KillCrystal] at @s run tp @e[tag=ChaseCrystal,distance=..2,limit=1,sort=nearest] ~ ~-200 ~
execute as @e[tag=KillCrystal] at @s run kill @e[tag=ChaseCrystal,distance=..2,limit=1,sort=nearest]
execute as @e[tag=KillCrystal] at @s run kill @s