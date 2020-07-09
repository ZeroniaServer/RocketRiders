execute unless entity @e[tag=rr_sandbox,limit=1,type=armor_stand] run summon armor_stand 23 216 -18 {Tags:["rr_sandbox"],Marker:1b,Invisible:1b,Invulnerable:1b,CustomNameVisible:0b}
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
scoreboard objectives add dropPickaxe minecraft.dropped:minecraft.diamond_pickaxe
scoreboard objectives add HasDiaPickaxe dummy
execute if entity @e[tag=rr_sandbox,limit=1,type=armor_stand] run tellraw @s {"text":"Sandbox Mode installed.","color":"green","bold":"true"}