execute as @e[tag=ChaseBlock] at @s if block ~ ~1.25 ~-1 moving_piston run setblock ~ ~1.25 ~ air destroy
execute as @e[tag=ChaseBlock] at @s unless block ~1 ~1.25 ~-1 air run setblock ~ ~1.25 ~ air destroy
execute as @e[tag=ChaseBlock] at @s unless block ~-1 ~1.25 ~-1 air run setblock ~ ~1.25 ~ air destroy
execute as @e[tag=ChaseBlock] at @s unless block ~ ~2.25 ~-1 air run setblock ~ ~1.25 ~ air destroy
execute as @e[tag=ChaseBlock] at @s unless block ~ ~0.25 ~-1 air run setblock ~ ~1.25 ~ air destroy

execute as @a[team=Blue] at @s if entity @e[tag=MissileBlock,distance=..3] if block ~ ~-1 ~ red_stained_glass run setblock ~ ~-1 ~ air destroy
execute as @a[team=Blue] at @s if entity @e[tag=UtilBlock,distance=..3] if block ~ ~-1 ~ purple_stained_glass run setblock ~ ~-1 ~ air destroy
execute as @a[team=Blue] at @s if entity @e[tag=ArrowBlock,distance=..3] if block ~ ~-1 ~ cyan_stained_glass run setblock ~ ~-1 ~ air destroy
execute as @a[team=Blue] at @s if entity @e[tag=CrystalBlock,distance=..3] if block ~ ~-1 ~ tinted_glass run setblock ~ ~-1 ~ air destroy

execute as @e[tag=MissileBlock,tag=!KillChaseblock] at @s unless block ~ ~1.25 ~ red_stained_glass run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace red_stained_glass
execute as @e[tag=MissileBlock,tag=!KillChaseblock] at @s unless block ~ ~1.25 ~ red_stained_glass run fill ~ ~1.25 ~ ~ ~1.25 ~3 air replace moving_piston
execute as @e[tag=MissileBlock,tag=!KillChaseblock] at @s unless block ~ ~1.25 ~ red_stained_glass if entity @a[team=Blue,scores={BreakCBRed=1..},distance=..8] run playsound minecraft:block.grass.place master @a ~ ~1.5 ~ 0.6 1
execute as @e[tag=MissileBlock,tag=!KillChaseblock] at @s unless block ~ ~1.25 ~ red_stained_glass if entity @a[team=Blue,scores={BreakCBRed=1..},distance=..8] run playsound minecraft:block.note_block.bit master @a ~ ~1.5 ~ 1 0.8
execute as @e[tag=MissileBlock,tag=!KillChaseblock] at @s unless block ~ ~1.25 ~ red_stained_glass if entity @a[team=Blue,scores={BreakCBRed=1..},distance=..8] run particle dust 3 3 3 1 ~ ~1.5 ~ 0.5 0.5 0.5 0.1 20 force
execute as @e[tag=MissileBlock,tag=!KillChaseblock] at @s unless block ~ ~1.25 ~ red_stained_glass run tag @a[team=Blue,sort=nearest,limit=1,distance=..8,scores={BreakCBRed=1..}] add getItem
execute as @e[tag=MissileBlock,tag=!KillChaseblock] at @s unless block ~ ~1.25 ~ red_stained_glass run execute as @a[team=Blue,tag=getItem,sort=nearest,limit=1,distance=..8,scores={BreakCBRed=1..}] run function items:missile/rng
execute as @e[tag=MissileBlock,tag=!KillChaseblock] at @s unless block ~ ~1.25 ~ red_stained_glass run tag @a[team=Blue,sort=nearest,limit=1,distance=..8,scores={BreakCBRed=1..}] remove getItem
execute as @e[tag=MissileBlock,tag=!KillChaseblock] at @s unless block ~ ~1.25 ~ red_stained_glass run item replace entity @s armor.head with air
kill @e[tag=KillChaseblock]
execute as @e[tag=MissileBlock,tag=!KillChaseblock] at @s unless block ~ ~1.25 ~ red_stained_glass run tag @s add KillChaseblock
scoreboard players reset @a[scores={BreakCBRed=1..}] BreakCBRed

execute as @e[tag=UtilBlock,tag=!KillChaseblock2] at @s unless block ~ ~1.25 ~ purple_stained_glass run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace purple_stained_glass
execute as @e[tag=UtilBlock,tag=!KillChaseblock2] at @s unless block ~ ~1.25 ~ purple_stained_glass run fill ~ ~1.25 ~ ~ ~1.25 ~3 air replace moving_piston
execute as @e[tag=UtilBlock,tag=!KillChaseblock2] at @s unless block ~ ~1.25 ~ purple_stained_glass if entity @a[team=Blue,scores={BreakCBPurple=1..},distance=..8] run playsound minecraft:block.end_portal_frame.fill master @a ~ ~1.5 ~ 1 2
execute as @e[tag=UtilBlock,tag=!KillChaseblock2] at @s unless block ~ ~1.25 ~ purple_stained_glass if entity @a[team=Blue,scores={BreakCBPurple=1..},distance=..8] run playsound minecraft:block.note_block.bit master @a ~ ~1.5 ~ 1 0.8
execute as @e[tag=UtilBlock,tag=!KillChaseblock2] at @s unless block ~ ~1.25 ~ purple_stained_glass if entity @a[team=Blue,scores={BreakCBPurple=1..},distance=..8] run particle dust 3 3 3 1 ~ ~1.5 ~ 0.5 0.5 0.5 0.1 20 force
execute as @e[tag=UtilBlock,tag=!KillChaseblock2] at @s unless block ~ ~1.25 ~ purple_stained_glass run tag @a[team=Blue,sort=nearest,limit=1,distance=..8,scores={BreakCBPurple=1..}] add getItem
execute as @e[tag=UtilBlock,tag=!KillChaseblock2] at @s unless block ~ ~1.25 ~ purple_stained_glass run execute as @a[team=Blue,tag=getItem,sort=nearest,limit=1,distance=..8,scores={BreakCBPurple=1..}] run function items:util/rng
execute as @e[tag=UtilBlock,tag=!KillChaseblock2] at @s unless block ~ ~1.25 ~ purple_stained_glass run tag @a[team=Blue,sort=nearest,limit=1,distance=..8,scores={BreakCBPurple=1..}] remove getItem
execute as @e[tag=UtilBlock,tag=!KillChaseblock2] at @s unless block ~ ~1.25 ~ purple_stained_glass run item replace entity @s armor.head with air
kill @e[tag=KillChaseblock2]
execute as @e[tag=UtilBlock,tag=!KillChaseblock2] at @s unless block ~ ~1.25 ~ purple_stained_glass run tag @s add KillChaseblock2
scoreboard players reset @a[scores={BreakCBPurple=1..}] BreakCBPurple

execute as @e[tag=ArrowBlock,tag=!KillChaseblock3] at @s unless block ~ ~1.25 ~ cyan_stained_glass run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace cyan_stained_glass
execute as @e[tag=ArrowBlock,tag=!KillChaseblock3] at @s unless block ~ ~1.25 ~ cyan_stained_glass run fill ~ ~1.25 ~ ~ ~1.25 ~3 air replace moving_piston
execute as @e[tag=ArrowBlock,tag=!KillChaseblock3] at @s unless block ~ ~1.25 ~ cyan_stained_glass if entity @a[team=Blue,distance=..8,scores={BreakCBCyan=1..}] run playsound minecraft:item.crossbow.loading_end master @a ~ ~ ~ 1 1.2
execute as @e[tag=ArrowBlock,tag=!KillChaseblock3] at @s unless block ~ ~1.25 ~ cyan_stained_glass if entity @a[team=Blue,distance=..8,scores={BreakCBCyan=1..}] run playsound minecraft:block.note_block.bit master @a ~ ~1.5 ~ 1 0.8
execute as @e[tag=ArrowBlock,tag=!KillChaseblock3] at @s unless block ~ ~1.25 ~ cyan_stained_glass if entity @a[team=Blue,distance=..8,scores={BreakCBCyan=1..}] run particle dust 3 3 3 1 ~ ~1.5 ~ 0.5 0.5 0.5 0.1 20 force
execute as @e[tag=ArrowBlock,tag=!KillChaseblock3] at @s unless block ~ ~1.25 ~ cyan_stained_glass run tag @a[team=Blue,sort=nearest,limit=1,distance=..8,scores={BreakCBCyan=1..}] add getItem
execute as @e[tag=ArrowBlock,tag=!KillChaseblock3] at @s unless block ~ ~1.25 ~ cyan_stained_glass run execute as @a[team=Blue,tag=getItem,sort=nearest,limit=1,distance=..8,scores={BreakCBCyan=1..}] run function items:util/givearrows
execute as @e[tag=ArrowBlock,tag=!KillChaseblock3] at @s unless block ~ ~1.25 ~ cyan_stained_glass run tag @a[team=Blue,sort=nearest,limit=1,distance=..8,scores={BreakCBCyan=1..}] remove getItem
execute as @e[tag=ArrowBlock,tag=!KillChaseblock3] at @s unless block ~ ~1.25 ~ cyan_stained_glass run item replace entity @s armor.head with air
kill @e[tag=KillChaseblock3]
execute as @e[tag=ArrowBlock,tag=!KillChaseblock3] at @s unless block ~ ~1.25 ~ cyan_stained_glass run tag @s add KillChaseblock3
scoreboard players reset @a[scores={BreakCBCyan=1..}] BreakCBCyan

execute as @e[tag=CrystalBlock,tag=!KillChaseblock4] at @s unless block ~ ~1.25 ~ tinted_glass if entity @a[team=Blue,tag=InLead,distance=..8,scores={BreakCBTint=1..}] run title @a[team=Blue,tag=InLead,distance=..8,scores={BreakCBTint=1..}] actionbar {"text":"You're in the lead! You can not shoot crystals at yourself!","bold":true,"color":"red"}
execute as @e[tag=CrystalBlock,tag=!KillChaseblock4] at @s unless block ~ ~1.25 ~ tinted_glass if entity @a[team=Blue,tag=InLead,distance=..8,scores={BreakCBTint=1..}] run setblock ~ ~1.25 ~ tinted_glass
execute as @e[tag=CrystalBlock,tag=!KillChaseblock4] at @s unless block ~ ~1.25 ~ tinted_glass run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace tinted_glass
execute as @e[tag=CrystalBlock,tag=!KillChaseblock4] at @s unless block ~ ~1.25 ~ tinted_glass run fill ~ ~1.25 ~ ~ ~1.25 ~3 air replace moving_piston
execute as @e[tag=CrystalBlock,tag=!KillChaseblock4] at @s unless block ~ ~1.25 ~ tinted_glass if entity @a[team=Blue,distance=..8,scores={BreakCBTint=1..}] run playsound minecraft:block.end_portal_frame.fill master @a ~ ~1.25 ~ 1 1.1
execute as @e[tag=CrystalBlock,tag=!KillChaseblock4] at @s unless block ~ ~1.25 ~ tinted_glass if entity @a[team=Blue,distance=..8,scores={BreakCBTint=1..}] run playsound minecraft:block.beacon.power_select master @a ~ ~1.25 ~ 1 2
execute as @e[tag=CrystalBlock,tag=!KillChaseblock4] at @s unless block ~ ~1.25 ~ tinted_glass if entity @a[team=Blue,distance=..8,scores={BreakCBTint=1..}] run particle minecraft:dragon_breath ~ ~1.25 ~ 0.1 0.1 0.1 0.1 30 force

execute as @e[tag=CrystalBlock,tag=!KillChaseblock4] at @s unless block ~ ~1.25 ~ tinted_glass if entity @a[team=Blue,distance=..8,scores={BreakCBTint=1..}] run summon armor_stand ~ ~1 ~ {Marker:1b,Invisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["ChaseCrystal"],Passengers:[{id:"end_crystal",ShowBottom:0b,Invulnerable:1b,Tags:["ChaseCrystal2"]}]}

execute as @e[tag=CrystalBlock,tag=!KillChaseblock4] at @s unless block ~ ~1.25 ~ tinted_glass run item replace entity @s armor.head with air
kill @e[tag=KillChaseblock4]
execute as @e[tag=CrystalBlock,tag=!KillChaseblock4] at @s unless block ~ ~1.25 ~ tinted_glass run tag @s add KillChaseblock
scoreboard players reset @a[scores={BreakCBTint=1..}] BreakCBTint