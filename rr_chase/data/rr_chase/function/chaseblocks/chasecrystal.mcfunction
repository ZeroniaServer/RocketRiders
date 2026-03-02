#Alert leaders
execute if entity @e[x=0,type=armor_stand,tag=ChaseCrystal] run scoreboard players add @a[x=0,tag=InLead] ChaseAlarm 1
execute as @a[x=0,tag=InLead,scores={ChaseAlarm=1}] at @s unless entity @e[type=armor_stand,tag=ChaseCrystal,distance=..14] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.2 1.4
execute as @a[x=0,tag=InLead,scores={ChaseAlarm=1}] at @s if entity @e[type=armor_stand,tag=ChaseCrystal,distance=..14] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.2 1.8
execute as @a[x=0,tag=InLead,scores={ChaseAlarm=3}] at @s if entity @e[type=armor_stand,tag=ChaseCrystal,distance=..14] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.2 1.8
execute as @a[x=0,tag=InLead,scores={ChaseAlarm=6}] at @s if entity @e[type=armor_stand,tag=ChaseCrystal,distance=..14] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.2 1.8
execute as @a[x=0,tag=InLead] at @s if entity @e[type=armor_stand,tag=ChaseCrystal,distance=..9] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.2 2
execute if entity @e[x=0,type=armor_stand,tag=ChaseCrystal] run title @a[x=0,tag=InLead,scores={ChaseAlarm=1}] times 0 20 0
execute if entity @e[x=0,type=armor_stand,tag=ChaseCrystal] run title @a[x=0,tag=InLead,scores={ChaseAlarm=1}] title " "
execute if entity @e[x=0,type=armor_stand,tag=ChaseCrystal] as @a[x=0,tag=InLead] at @s if entity @e[type=armor_stand,tag=ChaseCrystal,distance=10..] unless entity @e[type=armor_stand,tag=ChaseCrystal,distance=..7] run title @a[x=0,tag=InLead,scores={ChaseAlarm=1}] subtitle ["",{color:"red",text:"⚠"},{bold:true,color:"dark_blue",text:"End Crystal Incoming!"},{color:"red",text:"⚠"}]
execute if entity @e[x=0,type=armor_stand,tag=ChaseCrystal] as @a[x=0,tag=InLead] at @s if entity @e[type=armor_stand,tag=ChaseCrystal,distance=10..] unless entity @e[type=armor_stand,tag=ChaseCrystal,distance=..7] run title @a[x=0,tag=InLead,scores={ChaseAlarm=5}] subtitle ["",{color:"red",text:"⚠"},{bold:true,color:"blue",text:"End Crystal Incoming!"},{color:"red",text:"⚠"}]
execute if entity @e[x=0,type=armor_stand,tag=ChaseCrystal] as @a[x=0,tag=InLead] at @s if entity @e[type=armor_stand,tag=ChaseCrystal,distance=..9] run title @a[x=0,tag=InLead,scores={ChaseAlarm=5}] subtitle ["",{color:"dark_red",text:"☠"},{bold:true,color:"red",text:"End Crystal Incoming!"},{color:"dark_red",text:"☠"}]
execute unless entity @e[x=0,type=armor_stand,tag=ChaseCrystal] run title @a[x=0,tag=InLead,scores={ChaseAlarm=1..}] times 5 30 5
execute unless entity @e[x=0,type=armor_stand,tag=ChaseCrystal] run title @a[x=0,tag=InLead,scores={ChaseAlarm=1..}] title ""
execute unless entity @e[x=0,type=armor_stand,tag=ChaseCrystal] run title @a[x=0,tag=InLead,scores={ChaseAlarm=1..}] subtitle ""
execute unless entity @e[x=0,type=armor_stand,tag=ChaseCrystal] run scoreboard players reset @a[x=0,tag=InLead,scores={ChaseAlarm=1..}] ChaseAlarm
execute if entity @e[x=0,type=armor_stand,tag=ChaseCrystal] run scoreboard players set @a[x=0,tag=InLead,scores={ChaseAlarm=9..}] ChaseAlarm 0
title @a[x=0,tag=!InLead,scores={ChaseAlarm=1..}] times 5 30 5
title @a[x=0,tag=!InLead,scores={ChaseAlarm=1..}] title ""
title @a[x=0,tag=!InLead,scores={ChaseAlarm=1..}] subtitle ""
scoreboard players reset @a[x=0,tag=!InLead,scores={ChaseAlarm=1..}] ChaseAlarm

#Flight
execute as @e[x=0,type=armor_stand,tag=ChaseCrystal] at @s run tp @s ~ ~ ~ facing entity @a[x=0,tag=InLead,limit=1,sort=nearest]
execute as @e[x=0,type=armor_stand,tag=ChaseCrystal] at @s run tp @s ^ ^ ^0.20
execute as @e[x=0,type=armor_stand,tag=ChaseCrystal] at @s run function rr_chase:chaseblocks/shootcrystal
execute as @e[x=0,type=armor_stand,tag=ChaseCrystal] at @s if predicate custom:periodic_tick/3 run particle minecraft:dust{color:[1,0,1],scale:1} ^0.3 ^0.4 ^ 0 0 0 0 3 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
execute as @e[x=0,type=armor_stand,tag=ChaseCrystal] at @s if predicate custom:periodic_tick/3 run particle minecraft:dust{color:[1,0,1],scale:1} ^-0.3 ^0.4 ^ 0 0 0 0 3 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
execute as @e[x=0,type=armor_stand,tag=ChaseCrystal] at @s run tp @s ~ ~ ~ facing entity @a[x=0,tag=InLead,limit=1,sort=nearest]
execute as @e[x=0,type=armor_stand,tag=ChaseCrystal] at @s run tp @s ^ ^ ^0.10
execute as @e[x=0,type=armor_stand,tag=ChaseCrystal] at @s run function rr_chase:chaseblocks/shootcrystal
execute as @e[x=0,type=armor_stand,tag=ChaseCrystal] at @s if predicate custom:periodic_tick/3 run particle minecraft:dust{color:[1,0,1],scale:1} ^0.3 ^0.4 ^ 0 0 0 0 3 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
execute as @e[x=0,type=armor_stand,tag=ChaseCrystal] at @s if predicate custom:periodic_tick/3 run particle minecraft:dust{color:[1,0,1],scale:1} ^-0.3 ^0.4 ^ 0 0 0 0 3 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]

execute as @e[x=0,type=armor_stand,tag=ChaseCrystal] at @s run tp @s ~ ~ ~ facing entity @a[x=0,tag=InLead,limit=1,sort=nearest]
execute as @e[x=0,type=armor_stand,tag=ChaseCrystal] at @s run tp @s ^ ^ ^0.20
execute as @e[x=0,type=armor_stand,tag=ChaseCrystal] at @s run function rr_chase:chaseblocks/shootcrystal
execute as @e[x=0,type=armor_stand,tag=ChaseCrystal] at @s if predicate custom:periodic_tick/3 run particle minecraft:dust{color:[1,0,1],scale:1} ^0.3 ^0.4 ^ 0 0 0 0 3 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
execute as @e[x=0,type=armor_stand,tag=ChaseCrystal] at @s if predicate custom:periodic_tick/3 run particle minecraft:dust{color:[1,0,1],scale:1} ^-0.3 ^0.4 ^ 0 0 0 0 3 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
execute as @e[x=0,type=armor_stand,tag=ChaseCrystal] at @s unless entity @a[tag=InLead,distance=..20] run tp @s ~ ~ ~ facing entity @a[x=0,tag=InLead,limit=1,sort=nearest]
execute as @e[x=0,type=armor_stand,tag=ChaseCrystal] at @s unless entity @a[tag=InLead,distance=..20] run tp @s ^ ^ ^0.20
execute as @e[x=0,type=armor_stand,tag=ChaseCrystal] at @s unless entity @a[tag=InLead,distance=..20] run function rr_chase:chaseblocks/shootcrystal
execute as @e[x=0,type=armor_stand,tag=ChaseCrystal] at @s unless entity @a[tag=InLead,distance=..20] if predicate custom:periodic_tick/3 run particle minecraft:dust{color:[1,0,1],scale:1} ^0.3 ^0.4 ^ 0 0 0 0 3 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
execute as @e[x=0,type=armor_stand,tag=ChaseCrystal] at @s unless entity @a[tag=InLead,distance=..20] if predicate custom:periodic_tick/3 run particle minecraft:dust{color:[1,0,1],scale:1} ^-0.3 ^0.4 ^ 0 0 0 0 3 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
execute as @e[x=0,type=armor_stand,tag=ChaseCrystal] at @s if entity @a[tag=InLead,distance=..2] run tag @s add CrystalComplete
execute if predicate game:achievements_can_be_awarded as @e[x=0,type=armor_stand,tag=CrystalComplete] at @s if score @s ChaseCrystalID = @a[tag=InLead,distance=..3,sort=nearest,limit=1] playerUUID run advancement grant @a[tag=InLead,distance=..3,sort=nearest,limit=1] only achievements:rr_challenges/boomerang
execute as @e[x=0,type=armor_stand,tag=CrystalComplete] at @s if entity @a[tag=InLead,distance=..2] as @a[tag=InLead,distance=..3,sort=nearest,limit=1] at @s positioned ~ ~ ~2 run function custom:explosion {power:4,modifiers:{name:"End Crystal"}}
execute as @e[x=0,type=armor_stand,tag=CrystalComplete] at @s if entity @a[tag=InLead,distance=..2] as @a[tag=InLead,distance=..3,sort=nearest,limit=1] at @s positioned ~ ~1 ~2 run function custom:explosion {power:4,modifiers:{name:"End Crystal"}}
execute as @e[x=0,type=armor_stand,tag=CrystalComplete] at @s if entity @a[tag=InLead,distance=..2] as @a[tag=InLead,distance=..3,sort=nearest,limit=1] at @s positioned ~ ~-1 ~2 run function custom:explosion {power:4,modifiers:{name:"End Crystal"}}
execute as @e[x=0,type=armor_stand,tag=CrystalComplete] at @s if entity @a[tag=InLead,distance=..2] as @a[tag=InLead,distance=..3,sort=nearest,limit=1] at @s positioned ~ ~ ~2.2 run function custom:explosion {power:4,modifiers:{name:"End Crystal"}}
execute as @e[x=0,type=armor_stand,tag=CrystalComplete] at @s run scoreboard players set @s CmdData 300
execute as @e[x=0,type=armor_stand,tag=ChaseCrystal] at @s unless entity @e[type=end_crystal,tag=ChaseCrystal2,limit=1,sort=nearest,distance=..4] run scoreboard players set @s CmdData 300
execute as @e[x=0,type=end_crystal,tag=ChaseCrystal2] at @s unless entity @e[type=armor_stand,tag=ChaseCrystal,limit=1,sort=nearest,distance=..4] run kill @s

execute as @e[x=0,type=armor_stand,tag=ChaseCrystal] unless entity @a[x=0,tag=InLead] run scoreboard players set @s CmdData 300

scoreboard players add @e[x=0,type=armor_stand,tag=ChaseCrystal] CmdData 1
execute as @e[x=0,type=armor_stand,tag=ChaseCrystal,scores={CmdData=300..}] at @s run particle explosion ~ ~ ~ 0 0 0 0.1 3 force @a[x=0,tag=!hideParticles,predicate=custom:in_arena]
execute as @e[x=0,type=armor_stand,tag=ChaseCrystal,scores={CmdData=300..}] at @s run kill @e[type=end_crystal,tag=ChaseCrystal2,distance=..4,limit=1,sort=nearest]
execute as @e[x=0,type=armor_stand,tag=ChaseCrystal,scores={CmdData=300..}] run kill @s