execute as @e[tag=MissileBlock,tag=!KillChaseblock] at @s unless block ~ ~1.25 ~ red_stained_glass run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace red_stained_glass
execute as @e[tag=MissileBlock,tag=!KillChaseblock] at @s unless block ~ ~1.25 ~ red_stained_glass run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace moving_piston
execute as @e[tag=MissileBlock,tag=!KillChaseblock] at @s unless block ~ ~1.25 ~ red_stained_glass run playsound minecraft:block.grass.place master @a ~ ~1.5 ~ 1 1
execute as @e[tag=MissileBlock,tag=!KillChaseblock] at @s unless block ~ ~1.25 ~ red_stained_glass run playsound minecraft:block.note_block.bit master @a ~ ~1.5 ~ 1 0.8
execute as @e[tag=MissileBlock,tag=!KillChaseblock] at @s unless block ~ ~1.25 ~ red_stained_glass run particle dust 3 3 3 1 ~ ~1.5 ~ 0.5 0.5 0.5 0.1 20 force
execute as @e[tag=MissileBlock,tag=!KillChaseblock] at @s unless block ~ ~1.25 ~ red_stained_glass run item replace entity @s armor.head with air
kill @e[tag=KillChaseblock]
execute as @e[tag=MissileBlock,tag=!KillChaseblock] at @s unless block ~ ~1.25 ~ red_stained_glass run tag @s add KillChaseblock