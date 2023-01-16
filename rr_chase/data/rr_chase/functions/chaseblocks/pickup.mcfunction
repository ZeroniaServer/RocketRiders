function rr_chase:chaseblocks/displaynear
function rr_chase:chaseblocks/destroyunder

execute as @e[type=marker,tag=ChaseBlock] at @s if block ~ ~ ~-1 moving_piston run setblock ~ ~ ~ air destroy
execute as @e[type=marker,tag=ChaseBlock] at @s unless block ~1 ~ ~-1 #rr_chase:chaseblockneighbor run setblock ~ ~ ~ air destroy
execute as @e[type=marker,tag=ChaseBlock] at @s unless block ~-1 ~ ~-1 #rr_chase:chaseblockneighbor run setblock ~ ~ ~ air destroy
execute as @e[type=marker,tag=ChaseBlock] at @s unless block ~ ~2.25 ~-1 #rr_chase:chaseblockneighbor run setblock ~ ~ ~ air destroy
execute as @e[type=marker,tag=ChaseBlock] at @s unless block ~ ~0.25 ~-1 #rr_chase:chaseblockneighbor run setblock ~ ~ ~ air destroy

execute as @e[type=marker,tag=MissileBlock,tag=!KillChaseblock] at @s unless block ~ ~ ~ red_stained_glass run fill ~1 ~3 ~2 ~-1 ~-1 ~-2 air replace red_stained_glass
execute as @e[type=marker,tag=MissileBlock,tag=!KillChaseblock] at @s unless block ~ ~ ~ red_stained_glass run fill ~-1 ~ ~-1 ~1 ~ ~3 air replace moving_piston
execute as @e[type=marker,tag=MissileBlock,tag=!KillChaseblock] at @s unless block ~ ~ ~ red_stained_glass if entity @a[team=Blue,scores={BreakCBRed=1..},distance=..8] run playsound minecraft:block.grass.place master @a ~ ~1.5 ~ 0.6 1
execute as @e[type=marker,tag=MissileBlock,tag=!KillChaseblock] at @s unless block ~ ~ ~ red_stained_glass if entity @a[team=Blue,scores={BreakCBRed=1..},distance=..8] run playsound minecraft:block.note_block.bit master @a ~ ~1.5 ~ 1 0.8
execute as @e[type=marker,tag=MissileBlock,tag=!KillChaseblock] at @s unless block ~ ~ ~ red_stained_glass if entity @a[team=Blue,scores={BreakCBRed=1..},distance=..8] run particle dust 3 3 3 1 ~ ~1.5 ~ 0.5 0.5 0.5 0.1 20 force @a[predicate=custom:belowroof]
execute as @e[type=marker,tag=MissileBlock,tag=!KillChaseblock] at @s unless block ~ ~ ~ red_stained_glass run tag @a[team=Blue,sort=nearest,limit=1,distance=..8,scores={BreakCBRed=1..}] add getItem
execute as @e[type=marker,tag=MissileBlock,tag=!KillChaseblock] at @s unless block ~ ~ ~ red_stained_glass as @a[team=Blue,tag=getItem,sort=nearest,limit=1,distance=..8,scores={BreakCBRed=1..}] run function rr_chase:chaseblocks/givemissile
execute as @e[type=marker,tag=MissileBlock,tag=!KillChaseblock] at @s unless block ~ ~ ~ red_stained_glass run tag @a[team=Blue,sort=nearest,limit=1,distance=..8,scores={BreakCBRed=1..}] remove getItem
execute as @e[type=marker,tag=MissileBlock,tag=!KillChaseblock] at @s unless block ~ ~ ~ red_stained_glass run item replace entity @s armor.head with air
tp @e[type=marker,tag=KillChaseblock] ~ ~-200 ~
kill @e[type=marker,tag=KillChaseblock]
execute as @e[type=marker,tag=MissileBlock,tag=!KillChaseblock] at @s unless block ~ ~ ~ red_stained_glass run tag @s add KillChaseblock
scoreboard players reset @a[scores={BreakCBRed=1..}] BreakCBRed

execute as @e[type=marker,tag=UtilBlock,tag=!KillChaseblock2] at @s unless block ~ ~ ~ purple_stained_glass run fill ~1 ~3 ~2 ~-1 ~-1 ~-2 air replace purple_stained_glass
execute as @e[type=marker,tag=UtilBlock,tag=!KillChaseblock2] at @s unless block ~ ~ ~ purple_stained_glass run fill ~-1 ~ ~-1 ~1 ~ ~3 air replace moving_piston
execute as @e[type=marker,tag=UtilBlock,tag=!KillChaseblock2] at @s unless block ~ ~ ~ purple_stained_glass if entity @a[team=Blue,scores={BreakCBPurple=1..},distance=..8] run playsound minecraft:block.end_portal_frame.fill master @a ~ ~1.5 ~ 1 2
execute as @e[type=marker,tag=UtilBlock,tag=!KillChaseblock2] at @s unless block ~ ~ ~ purple_stained_glass if entity @a[team=Blue,scores={BreakCBPurple=1..},distance=..8] run playsound minecraft:block.note_block.bit master @a ~ ~1.5 ~ 1 0.8
execute as @e[type=marker,tag=UtilBlock,tag=!KillChaseblock2] at @s unless block ~ ~ ~ purple_stained_glass if entity @a[team=Blue,scores={BreakCBPurple=1..},distance=..8] run particle dust 3 3 3 1 ~ ~1.5 ~ 0.5 0.5 0.5 0.1 20 force @a[predicate=custom:belowroof]
execute as @e[type=marker,tag=UtilBlock,tag=!KillChaseblock2] at @s unless block ~ ~ ~ purple_stained_glass run tag @a[team=Blue,sort=nearest,limit=1,distance=..8,scores={BreakCBPurple=1..}] add getItem
execute as @e[type=marker,tag=UtilBlock,tag=!KillChaseblock2] at @s unless block ~ ~ ~ purple_stained_glass as @a[team=Blue,tag=getItem,sort=nearest,limit=1,distance=..8,scores={BreakCBPurple=1..}] run function rr_chase:chaseblocks/giveutil
execute as @e[type=marker,tag=UtilBlock,tag=!KillChaseblock2] at @s unless block ~ ~ ~ purple_stained_glass run tag @a[team=Blue,sort=nearest,limit=1,distance=..8,scores={BreakCBPurple=1..}] remove getItem
execute as @e[type=marker,tag=UtilBlock,tag=!KillChaseblock2] at @s unless block ~ ~ ~ purple_stained_glass run item replace entity @s armor.head with air
tp @e[type=marker,tag=KillChaseblock2] ~ ~-200 ~
kill @e[type=marker,tag=KillChaseblock2]
execute as @e[type=marker,tag=UtilBlock,tag=!KillChaseblock2] at @s unless block ~ ~ ~ purple_stained_glass run tag @s add KillChaseblock2
scoreboard players reset @a[scores={BreakCBPurple=1..}] BreakCBPurple

execute as @e[type=marker,tag=ArrowBlock,tag=!KillChaseblock3] at @s unless block ~ ~ ~ cyan_stained_glass run fill ~1 ~3 ~2 ~-1 ~-1 ~-2 air replace cyan_stained_glass
execute as @e[type=marker,tag=ArrowBlock,tag=!KillChaseblock3] at @s unless block ~ ~ ~ cyan_stained_glass run fill ~-1 ~ ~-1 ~1 ~ ~3 air replace moving_piston
execute as @e[type=marker,tag=ArrowBlock,tag=!KillChaseblock3] at @s unless block ~ ~ ~ cyan_stained_glass if entity @a[team=Blue,distance=..8,scores={BreakCBCyan=1..}] run playsound minecraft:item.crossbow.loading_end master @a ~ ~ ~ 1 1.2
execute as @e[type=marker,tag=ArrowBlock,tag=!KillChaseblock3] at @s unless block ~ ~ ~ cyan_stained_glass if entity @a[team=Blue,distance=..8,scores={BreakCBCyan=1..}] run playsound minecraft:block.note_block.bit master @a ~ ~1.5 ~ 1 0.8
execute as @e[type=marker,tag=ArrowBlock,tag=!KillChaseblock3] at @s unless block ~ ~ ~ cyan_stained_glass if entity @a[team=Blue,distance=..8,scores={BreakCBCyan=1..}] run particle dust 3 3 3 1 ~ ~1.5 ~ 0.5 0.5 0.5 0.1 20 force @a[predicate=custom:belowroof]
execute as @e[type=marker,tag=ArrowBlock,tag=!KillChaseblock3] at @s unless block ~ ~ ~ cyan_stained_glass run tag @a[team=Blue,sort=nearest,limit=1,distance=..8,scores={BreakCBCyan=1..}] add getItem
execute as @e[type=marker,tag=ArrowBlock,tag=!KillChaseblock3] at @s unless block ~ ~ ~ cyan_stained_glass as @a[team=Blue,tag=getItem,sort=nearest,limit=1,distance=..8,scores={BreakCBCyan=1..}] run function rr_chase:chaseblocks/givearrows
execute as @e[type=marker,tag=ArrowBlock,tag=!KillChaseblock3] at @s unless block ~ ~ ~ cyan_stained_glass run tag @a[team=Blue,sort=nearest,limit=1,distance=..8,scores={BreakCBCyan=1..}] remove getItem
execute as @e[type=marker,tag=ArrowBlock,tag=!KillChaseblock3] at @s unless block ~ ~ ~ cyan_stained_glass run item replace entity @s armor.head with air
tp @e[type=marker,tag=KillChaseblock3] ~ ~-200 ~
kill @e[type=marker,tag=KillChaseblock3]
execute as @e[type=marker,tag=ArrowBlock,tag=!KillChaseblock3] at @s unless block ~ ~ ~ cyan_stained_glass run tag @s add KillChaseblock3
scoreboard players reset @a[scores={BreakCBCyan=1..}] BreakCBCyan

execute as @e[type=marker,tag=CrystalBlock,tag=!KillChaseblock4] at @s unless block ~ ~ ~ tinted_glass if entity @a[team=Blue,tag=InLead,distance=..8,scores={BreakCBTint=1..}] run title @a[team=Blue,tag=InLead,distance=..8,scores={BreakCBTint=1..}] actionbar {"text":"You're in the lead! You cannot shoot End Crystals at yourself!","bold":true,"color":"white"}
execute as @e[type=marker,tag=CrystalBlock,tag=!KillChaseblock4] at @s unless block ~ ~ ~ tinted_glass if entity @a[team=Blue,tag=InLead,distance=..8,scores={BreakCBTint=1..}] run tag @s remove Display
execute as @e[type=marker,tag=CrystalBlock,tag=!KillChaseblock4] at @s unless block ~ ~ ~ tinted_glass if entity @a[team=Blue,tag=InLead,distance=..8,scores={BreakCBTint=1..}] run setblock ~ ~ ~ tinted_glass
execute as @e[type=marker,tag=CrystalBlock,tag=!KillChaseblock4] at @s unless block ~ ~ ~ tinted_glass run fill ~ ~ ~3 ~ ~ ~ air replace tinted_glass
execute as @e[type=marker,tag=CrystalBlock,tag=!KillChaseblock4] at @s unless block ~ ~ ~ tinted_glass run fill ~-1 ~ ~-1 ~1 ~ ~3 air replace moving_piston
execute as @e[type=marker,tag=CrystalBlock,tag=!KillChaseblock4] at @s unless block ~ ~ ~ tinted_glass if entity @a[team=Blue,distance=..8,scores={BreakCBTint=1..}] run playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 1 1.1
execute as @e[type=marker,tag=CrystalBlock,tag=!KillChaseblock4] at @s unless block ~ ~ ~ tinted_glass if entity @a[team=Blue,distance=..8,scores={BreakCBTint=1..}] run playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 1 2
execute as @e[type=marker,tag=CrystalBlock,tag=!KillChaseblock4] at @s unless block ~ ~ ~ tinted_glass if entity @a[team=Blue,distance=..8,scores={BreakCBTint=1..}] run particle minecraft:dragon_breath ~ ~ ~ 0.1 0.1 0.1 0.1 30 force @a[predicate=custom:belowroof]

execute as @e[type=marker,tag=CrystalBlock,tag=!KillChaseblock4] at @s unless block ~ ~ ~ tinted_glass if entity @a[team=Blue,distance=..8,scores={BreakCBTint=1..}] run summon armor_stand ~ ~1 ~ {Silent:1b,Marker:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,Tags:["ChaseCrystal"],Passengers:[{id:"end_crystal",ShowBottom:0b,Glowing:1b,Invulnerable:1b,Tags:["ChaseCrystal2"]}]}
execute as @e[type=marker,tag=CrystalBlock,tag=!KillChaseblock4] at @s unless block ~ ~ ~ tinted_glass if entity @a[team=Blue,distance=..8,scores={BreakCBTint=1..}] store result score @e[type=armor_stand,tag=ChaseCrystal,limit=1,sort=nearest,distance=..3] ChaseCrystalID run scoreboard players get @a[team=Blue,distance=..8,scores={BreakCBTint=1..},limit=1] playerUUID

execute as @e[type=marker,tag=CrystalBlock,tag=!KillChaseblock4] at @s unless block ~ ~ ~ tinted_glass if entity @a[team=Blue,distance=..8,scores={BreakCBTint=1..}] run playsound minecraft:entity.shulker.shoot master @a ~ ~ ~ 1 1.3

execute as @e[type=marker,tag=CrystalBlock,tag=!KillChaseblock4] at @s unless block ~ ~ ~ tinted_glass run item replace entity @s armor.head with air
tp @e[type=marker,tag=KillChaseblock4] ~ ~-200 ~
kill @e[type=marker,tag=KillChaseblock4]
execute as @e[type=marker,tag=CrystalBlock,tag=!KillChaseblock4] at @s unless block ~ ~ ~ tinted_glass run tag @s add KillChaseblock
scoreboard players reset @a[scores={BreakCBTint=1..}] BreakCBTint