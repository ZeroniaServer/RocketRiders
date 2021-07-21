execute unless entity @e[type=armor_stand,tag=rr_sandbox,limit=1] run summon armor_stand 25 184 -6 {Tags:["rr_sandbox","gamemodeAS"],Marker:1b,Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,CustomName:'{"text":"Sandbox Mode"}'}
scoreboard objectives add sandboxRandom dummy
scoreboard objectives add SBplaceSlime minecraft.used:minecraft.slime_block
scoreboard objectives add SBplaceRS minecraft.used:minecraft.redstone_block
scoreboard objectives add SBplacePiston minecraft.used:minecraft.piston
scoreboard objectives add SBplaceSPiston minecraft.used:minecraft.sticky_piston
scoreboard objectives add SBplaceObsi minecraft.used:minecraft.obsidian
scoreboard objectives add SBplaceTNT minecraft.used:minecraft.tnt
scoreboard objectives add SBplaceBGlass minecraft.used:minecraft.blue_stained_glass
scoreboard objectives add SBplaceYGlass minecraft.used:minecraft.yellow_stained_glass
scoreboard objectives add SBplaceBGlaze minecraft.used:minecraft.blue_glazed_terracotta
scoreboard objectives add SBplaceYGlaze minecraft.used:minecraft.yellow_glazed_terracotta
scoreboard objectives add SBplaceBCon minecraft.used:minecraft.blue_concrete
scoreboard objectives add SBplaceYCon minecraft.used:minecraft.yellow_concrete
scoreboard objectives add SBplaceScaf minecraft.used:minecraft.scaffolding
scoreboard objectives add SBplaceObser minecraft.used:minecraft.observer
scoreboard objectives add dropPickaxe minecraft.dropped:minecraft.netherite_pickaxe
scoreboard objectives add HasPickaxe dummy
execute if entity @e[type=armor_stand,tag=rr_sandbox,limit=1] run tellraw @s {"text":"Sandbox Mode installed.","color":"green","bold":true}
scoreboard players add @e[type=armor_stand,tag=rr_sandbox,limit=1] CmdData 1
execute unless entity @e[type=marker,tag=PlacerClear] run function game:forcestop