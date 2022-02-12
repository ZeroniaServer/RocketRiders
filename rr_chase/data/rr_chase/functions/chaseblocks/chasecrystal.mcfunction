execute as @e[tag=ChaseCrystal] at @s run playsound minecraft:particle.soul_escape master @a ~ ~ ~ 6 0
execute as @e[tag=ChaseCrystal] at @s run playsound minecraft:particle.soul_escape master @a ~ ~ ~ 6 0.7
execute as @e[tag=ChaseCrystal] at @s run tp @s ~ ~ ~ facing entity @a[tag=InLead,limit=1,sort=nearest]
execute as @e[tag=ChaseCrystal] at @s run tp @s ^ ^ ^0.20
execute as @e[tag=ChaseCrystal] at @s run particle dust 1 0 3 1 ^0.3 ^0.4 ^ 0 0 0 0 3 force
execute as @e[tag=ChaseCrystal] at @s run particle dust 1 0 3 1 ^-0.3 ^0.4 ^ 0 0 0 0 3 force
execute as @e[tag=ChaseCrystal] at @s run tp @s ~ ~ ~ facing entity @a[tag=InLead,limit=1,sort=nearest]
execute as @e[tag=ChaseCrystal] at @s run tp @s ^ ^ ^0.10
execute as @e[tag=ChaseCrystal] at @s run particle dust 1 0 3 1 ^0.3 ^0.4 ^ 0 0 0 0 3 force
execute as @e[tag=ChaseCrystal] at @s run particle dust 1 0 3 1 ^-0.3 ^0.4 ^ 0 0 0 0 3 force
execute as @e[tag=ChaseCrystal] at @s unless entity @a[tag=InLead,distance=..20] run tp @s ~ ~ ~ facing entity @a[tag=InLead,limit=1,sort=nearest]
execute as @e[tag=ChaseCrystal] at @s unless entity @a[tag=InLead,distance=..20] run tp @s ^ ^ ^0.20
execute as @e[tag=ChaseCrystal] at @s unless entity @a[tag=InLead,distance=..20] run particle dust 1 0 3 1 ^0.3 ^0.4 ^ 0 0 0 0 3 force
execute as @e[tag=ChaseCrystal] at @s unless entity @a[tag=InLead,distance=..20] run particle dust 1 0 3 1 ^-0.3 ^0.4 ^ 0 0 0 0 3 force
execute as @e[tag=ChaseCrystal] at @s unless entity @a[tag=InLead,distance=..20] run tp @s ~ ~ ~ facing entity @a[tag=InLead,limit=1,sort=nearest]
execute as @e[tag=ChaseCrystal] at @s unless entity @a[tag=InLead,distance=..20] run tp @s ^ ^ ^0.20
execute as @e[tag=ChaseCrystal] at @s unless entity @a[tag=InLead,distance=..20] run particle dust 1 0 3 1 ^0.3 ^0.4 ^ 0 0 0 0 3 force
execute as @e[tag=ChaseCrystal] at @s unless entity @a[tag=InLead,distance=..20] run particle dust 1 0 3 1 ^-0.3 ^0.4 ^ 0 0 0 0 3 force
execute as @e[tag=ChaseCrystal] at @s if entity @a[tag=InLead,distance=..2] run tag @s add CrystalComplete
execute as @e[tag=CrystalComplete] at @s if entity @a[tag=InLead,distance=..2] as @a[tag=InLead,distance=..3,sort=nearest,limit=1] at @s run summon tnt ~ ~ ~2
execute as @e[tag=CrystalComplete] at @s if entity @a[tag=InLead,distance=..2] as @a[tag=InLead,distance=..3,sort=nearest,limit=1] at @s run summon tnt ~ ~1 ~2
execute as @e[tag=CrystalComplete] at @s if entity @a[tag=InLead,distance=..2] as @a[tag=InLead,distance=..3,sort=nearest,limit=1] at @s run summon tnt ~ ~-1 ~2
execute as @e[tag=CrystalComplete] at @s if entity @a[tag=InLead,distance=..2] as @a[tag=InLead,distance=..3,sort=nearest,limit=1] at @s run summon tnt ~ ~ ~2.2
execute as @e[tag=CrystalComplete] at @s run scoreboard players set @s CmdData 300
execute as @e[tag=ChaseCrystal] at @s unless entity @e[tag=ChaseCrystal2,limit=1,sort=nearest,distance=..4] run scoreboard players set @s CmdData 300
execute as @e[tag=ChaseCrystal2] at @s unless entity @e[tag=ChaseCrystal,limit=1,sort=nearest,distance=..4] run kill @s

execute as @e[tag=ChaseCrystal] unless entity @a[tag=InLead] run scoreboard players set @s CmdData 300

scoreboard players add @e[tag=ChaseCrystal] CmdData 1
execute as @e[tag=ChaseCrystal,scores={CmdData=300..}] at @s run particle explosion ~ ~ ~ 0 0 0 0.1 3 force
execute as @e[tag=ChaseCrystal,scores={CmdData=300..}] at @s run kill @e[tag=ChaseCrystal2,distance=..4,limit=1,sort=nearest]
execute as @e[tag=ChaseCrystal,scores={CmdData=300..}] run kill @s