tag @s remove BOTCONTROL
scoreboard players add @s botfireball 1

execute as @s[tag=BlueBot,scores={botarrow=1}] at @s run tp @s ~ ~ ~ facing entity @e[team=Yellow,sort=nearest,limit=1]
execute as @s[tag=YellowBot,scores={botarrow=1}] at @s run tp @s ~ ~ ~ facing entity @e[team=Blue,sort=nearest,limit=1]
execute as @s[tag=BlueBot,scores={botarrow=1}] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["YellowFireball"],Duration:1}
execute as @s[tag=BlueBot,scores={botarrow=3}] at @s run 
execute as @s[scores={botarrow=1}] at @s run playsound minecraft:item.armor.equip_generic player @a ~ ~ ~ 0.5 1
execute as @s[scores={botarrow=1}] at @s run tp @e[tag=LOSTracker,distance=..1,limit=1,sort=nearest] @s
execute as @s[scores={botarrow=1}] at @s run tp @e[tag=LOSTracker,distance=..1,limit=1,sort=nearest] ~ ~1.5 ~
execute as @e[tag=LOSTracker] at @s run function rr_bots:bot/attacks/lostrack
execute as @e[tag=BotFireArrow,scores={botarrow=10}] at @s run playsound minecraft:entity.skeleton.shoot player @a ~ ~ ~ 1 1




execute as @e[tag=BotFireArrow,scores={botarrow=10}] at @s anchored eyes positioned ^ ^ ^ run function rr_bots:bot/attacks/fireball/fireballfly1

#execute as @s at @s run function rr_bots:bot/animations/shootanim

tag @e[scores={botarrow=10..}] remove BotFireArrow
tag @e[scores={botarrow=10..}] remove BotArrows
tag @e[scores={botarrow=10..}] remove BOTCONTROL
scoreboard players remove @e[scores={botarrow=10..}] botarrowitems 1
scoreboard players reset @e[scores={botarrow=10..}] botarrow