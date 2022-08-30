#Alert leaders
execute if entity @e[type=armor_stand,tag=ChaseCrystal] run scoreboard players add @a[tag=InLead] ChaseAlarm 1
execute as @a[tag=InLead,scores={ChaseAlarm=1}] at @s unless entity @e[type=armor_stand,tag=ChaseCrystal,distance=..14] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.2 1.4
execute as @a[tag=InLead,scores={ChaseAlarm=1}] at @s if entity @e[type=armor_stand,tag=ChaseCrystal,distance=..14] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.2 1.8
execute as @a[tag=InLead,scores={ChaseAlarm=3}] at @s if entity @e[type=armor_stand,tag=ChaseCrystal,distance=..14] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.2 1.8
execute as @a[tag=InLead,scores={ChaseAlarm=6}] at @s if entity @e[type=armor_stand,tag=ChaseCrystal,distance=..14] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.2 1.8
execute as @a[tag=InLead] at @s if entity @e[type=armor_stand,tag=ChaseCrystal,distance=..9] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.2 2
execute if entity @e[type=armor_stand,tag=ChaseCrystal] run title @a[tag=InLead,scores={ChaseAlarm=1}] times 0 20 0
execute if entity @e[type=armor_stand,tag=ChaseCrystal] run title @a[tag=InLead,scores={ChaseAlarm=1}] title " "
execute if entity @e[type=armor_stand,tag=ChaseCrystal] as @a[tag=InLead] at @s if entity @e[type=armor_stand,tag=ChaseCrystal,distance=10..] unless entity @e[type=armor_stand,tag=ChaseCrystal,distance=..7] run title @a[tag=InLead,scores={ChaseAlarm=1}] subtitle ["",{"text":"⚠","color":"red","bold":true},{"text":"End Crystal Incoming!","bold":true,"color":"dark_blue"},{"text":"⚠","color":"red","bold":true}]
execute if entity @e[type=armor_stand,tag=ChaseCrystal] as @a[tag=InLead] at @s if entity @e[type=armor_stand,tag=ChaseCrystal,distance=10..] unless entity @e[type=armor_stand,tag=ChaseCrystal,distance=..7] run title @a[tag=InLead,scores={ChaseAlarm=5}] subtitle ["",{"text":"⚠","color":"red","bold":true},{"text":"End Crystal Incoming!","bold":true,"color":"blue"},{"text":"⚠","color":"red","bold":true}]
execute if entity @e[type=armor_stand,tag=ChaseCrystal] as @a[tag=InLead] at @s if entity @e[type=armor_stand,tag=ChaseCrystal,distance=..9] run title @a[tag=InLead,scores={ChaseAlarm=5}] subtitle ["",{"text":"☠","color":"dark_red","bold":false},{"text":"End Crystal Incoming!","bold":true,"color":"red"},{"text":"☠","color":"dark_red","bold":false}]
execute unless entity @e[type=armor_stand,tag=ChaseCrystal] run scoreboard players reset @a[tag=InLead,scores={ChaseAlarm=1..}] ChaseAlarm
execute if entity @e[type=armor_stand,tag=ChaseCrystal] run scoreboard players reset @a[tag=InLead,scores={ChaseAlarm=9..}] ChaseAlarm
scoreboard players reset @a[tag=!InLead,scores={ChaseAlarm=1..}] ChaseAlarm
execute if entity @e[type=armor_stand,tag=ChaseCrystal] run scoreboard players add @a[tag=InLead]

#Flight
execute as @e[type=armor_stand,tag=ChaseCrystal] at @s run tp @s ~ ~ ~ facing entity @a[tag=InLead,limit=1,sort=nearest]
execute as @e[type=armor_stand,tag=ChaseCrystal] at @s run tp @s ^ ^ ^0.20
execute as @e[type=armor_stand,tag=ChaseCrystal] at @s run function rr_chase:chaseblocks/shootcrystal
execute as @e[type=armor_stand,tag=ChaseCrystal] at @s if score $dust CmdData matches 1 run particle dust 1 0 3 1 ^0.3 ^0.4 ^ 0 0 0 0 3 force @a[predicate=custom:belowroof]
execute as @e[type=armor_stand,tag=ChaseCrystal] at @s if score $dust CmdData matches 1 run particle dust 1 0 3 1 ^-0.3 ^0.4 ^ 0 0 0 0 3 force @a[predicate=custom:belowroof]
execute as @e[type=armor_stand,tag=ChaseCrystal] at @s run tp @s ~ ~ ~ facing entity @a[tag=InLead,limit=1,sort=nearest]
execute as @e[type=armor_stand,tag=ChaseCrystal] at @s run tp @s ^ ^ ^0.10
execute as @e[type=armor_stand,tag=ChaseCrystal] at @s run function rr_chase:chaseblocks/shootcrystal
execute as @e[type=armor_stand,tag=ChaseCrystal] at @s if score $dust CmdData matches 1 run particle dust 1 0 3 1 ^0.3 ^0.4 ^ 0 0 0 0 3 force @a[predicate=custom:belowroof]
execute as @e[type=armor_stand,tag=ChaseCrystal] at @s if score $dust CmdData matches 1 run particle dust 1 0 3 1 ^-0.3 ^0.4 ^ 0 0 0 0 3 force @a[predicate=custom:belowroof]

execute as @e[type=armor_stand,tag=ChaseCrystal] at @s run tp @s ~ ~ ~ facing entity @a[tag=InLead,limit=1,sort=nearest]
execute as @e[type=armor_stand,tag=ChaseCrystal] at @s run tp @s ^ ^ ^0.20
execute as @e[type=armor_stand,tag=ChaseCrystal] at @s run function rr_chase:chaseblocks/shootcrystal
execute as @e[type=armor_stand,tag=ChaseCrystal] at @s if score $dust CmdData matches 1 run particle dust 1 0 3 1 ^0.3 ^0.4 ^ 0 0 0 0 3 force @a[predicate=custom:belowroof]
execute as @e[type=armor_stand,tag=ChaseCrystal] at @s if score $dust CmdData matches 1 run particle dust 1 0 3 1 ^-0.3 ^0.4 ^ 0 0 0 0 3 force @a[predicate=custom:belowroof]
execute as @e[type=armor_stand,tag=ChaseCrystal] at @s unless entity @a[tag=InLead,distance=..20] run tp @s ~ ~ ~ facing entity @a[tag=InLead,limit=1,sort=nearest]
execute as @e[type=armor_stand,tag=ChaseCrystal] at @s unless entity @a[tag=InLead,distance=..20] run tp @s ^ ^ ^0.20
execute as @e[type=armor_stand,tag=ChaseCrystal] at @s unless entity @a[tag=InLead,distance=..20] run function rr_chase:chaseblocks/shootcrystal
execute as @e[type=armor_stand,tag=ChaseCrystal] at @s unless entity @a[tag=InLead,distance=..20] if score $dust CmdData matches 1 run particle dust 1 0 3 1 ^0.3 ^0.4 ^ 0 0 0 0 3 force @a[predicate=custom:belowroof]
execute as @e[type=armor_stand,tag=ChaseCrystal] at @s unless entity @a[tag=InLead,distance=..20] if score $dust CmdData matches 1 run particle dust 1 0 3 1 ^-0.3 ^0.4 ^ 0 0 0 0 3 force @a[predicate=custom:belowroof]
execute as @e[type=armor_stand,tag=ChaseCrystal] at @s if entity @a[tag=InLead,distance=..2] run tag @s add CrystalComplete
execute if entity @e[type=armor_stand,tag=Selection,scores={servermode=0},tag=!SMCustom] as @e[type=armor_stand,tag=CrystalComplete] at @s if score @s ChaseCrystalID = @a[tag=InLead,distance=..3,sort=nearest,limit=1] playerUUID run advancement grant @a[tag=InLead,distance=..3,sort=nearest,limit=1] only achievements:rr_challenges/boomerang
execute as @e[type=armor_stand,tag=CrystalComplete] at @s if entity @a[tag=InLead,distance=..2] as @a[tag=InLead,distance=..3,sort=nearest,limit=1] at @s run summon tnt ~ ~ ~2
execute as @e[type=armor_stand,tag=CrystalComplete] at @s if entity @a[tag=InLead,distance=..2] as @a[tag=InLead,distance=..3,sort=nearest,limit=1] at @s run summon tnt ~ ~1 ~2
execute as @e[type=armor_stand,tag=CrystalComplete] at @s if entity @a[tag=InLead,distance=..2] as @a[tag=InLead,distance=..3,sort=nearest,limit=1] at @s run summon tnt ~ ~-1 ~2
execute as @e[type=armor_stand,tag=CrystalComplete] at @s if entity @a[tag=InLead,distance=..2] as @a[tag=InLead,distance=..3,sort=nearest,limit=1] at @s run summon tnt ~ ~ ~2.2
execute as @e[type=armor_stand,tag=CrystalComplete] at @s run scoreboard players set @s CmdData 300
execute as @e[type=armor_stand,tag=ChaseCrystal] at @s unless entity @e[type=end_crystal,tag=ChaseCrystal2,limit=1,sort=nearest,distance=..4] run scoreboard players set @s CmdData 300
execute as @e[type=end_crystal,tag=ChaseCrystal2] at @s unless entity @e[type=armor_stand,tag=ChaseCrystal,limit=1,sort=nearest,distance=..4] run kill @s

execute as @e[type=armor_stand,tag=ChaseCrystal] unless entity @a[tag=InLead] run scoreboard players set @s CmdData 300

scoreboard players add @e[type=armor_stand,tag=ChaseCrystal] CmdData 1
execute as @e[type=armor_stand,tag=ChaseCrystal,scores={CmdData=300..}] at @s run particle explosion ~ ~ ~ 0 0 0 0.1 3 force @a[predicate=custom:belowroof]
execute as @e[type=armor_stand,tag=ChaseCrystal,scores={CmdData=300..}] at @s run kill @e[type=end_crystal,tag=ChaseCrystal2,distance=..4,limit=1,sort=nearest]
execute as @e[type=armor_stand,tag=ChaseCrystal,scores={CmdData=300..}] run kill @s