#############################################
## PLACEDISP: How the Missile Display Area ##
## operates based on the page of a lectern ##
#############################################

#Cooldown
execute as @e[x=0,type=armor_stand,tag=DispCooldown] run scoreboard players add $DispCD CmdData 1
execute if score $DispCD CmdData matches 30 if score $prevpage CmdData matches 0 run data merge block 12 203 78 {Page:0}
execute if score $DispCD CmdData matches 30 if score $prevpage CmdData matches 1 run data merge block 12 203 78 {Page:1}
execute if score $DispCD CmdData matches 30 run tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove DispCooldown
execute unless entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=DispCooldown] run scoreboard players reset $DispCD CmdData
execute unless entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=DispCooldown] run scoreboard players reset $prevpage CmdData

#Set page back to 1 if someone tries to use the arrow to cycle through pages
execute if entity @e[x=0,type=armor_stand,tag=DispCooldown] run data merge block 12 203 78 {Page:26}
execute unless entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=DispCooldown] unless block 12 203 78 minecraft:lectern{Page:0} unless block 12 203 78 minecraft:lectern{Page:1} unless block 12 203 78 minecraft:lectern{Page:2} unless block 12 203 78 minecraft:lectern{Page:3} unless block 12 203 78 minecraft:lectern{Page:4} unless block 12 203 78 minecraft:lectern{Page:25} unless block 12 203 78 minecraft:lectern{Page:26} run tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add DispCooldown
execute unless entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=DispCooldown] unless block 12 203 78 minecraft:lectern{Page:0} unless block 12 203 78 minecraft:lectern{Page:1} run data merge block 12 203 78 {Page:0}

#Display missiles
execute if block 12 203 78 minecraft:lectern{Page:5} run function lobby:missiledisplay/missile/tomatwo
execute if block 12 203 78 minecraft:lectern{Page:6} run function lobby:missiledisplay/missile/ant
execute if block 12 203 78 minecraft:lectern{Page:7} run function lobby:missiledisplay/missile/blade
execute if block 12 203 78 minecraft:lectern{Page:8} run function lobby:missiledisplay/missile/catapult
execute if block 12 203 78 minecraft:lectern{Page:9} run function lobby:missiledisplay/missile/slasher
execute if block 12 203 78 minecraft:lectern{Page:10} run function lobby:missiledisplay/missile/lifter
execute if block 12 203 78 minecraft:lectern{Page:11} run function lobby:missiledisplay/missile/chronull
execute if block 12 203 78 minecraft:lectern{Page:12} run function lobby:missiledisplay/missile/eguard
execute if block 12 203 78 minecraft:lectern{Page:13} run function lobby:missiledisplay/missile/citadel
execute if block 12 203 78 minecraft:lectern{Page:14} run function lobby:missiledisplay/missile/gemini
execute if block 12 203 78 minecraft:lectern{Page:15} run function lobby:missiledisplay/missile/thunderbolt
execute if block 12 203 78 minecraft:lectern{Page:16} run function lobby:missiledisplay/missile/hurricane
execute if block 12 203 78 minecraft:lectern{Page:17} run function lobby:missiledisplay/missile/auxiliary
execute if block 12 203 78 minecraft:lectern{Page:18} run function lobby:missiledisplay/missile/warhead
execute if block 12 203 78 minecraft:lectern{Page:19} run function lobby:missiledisplay/missile/rifter
execute if block 12 203 78 minecraft:lectern{Page:20} run function lobby:missiledisplay/missile/jbuster
execute if block 12 203 78 minecraft:lectern{Page:21} run function lobby:missiledisplay/missile/hypersonic
execute if block 12 203 78 minecraft:lectern{Page:22} run function lobby:missiledisplay/missile/bullet
execute if block 12 203 78 minecraft:lectern{Page:23} run function lobby:missiledisplay/missile/duplex
execute if block 12 203 78 minecraft:lectern{Page:24} run function lobby:missiledisplay/missile/broadsword