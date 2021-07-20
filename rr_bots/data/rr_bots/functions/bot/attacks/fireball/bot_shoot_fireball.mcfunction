tag @s remove BOTCONTROL
scoreboard players add @s botfireball 1

execute if entity @s[tag=BlueBot,scores={botarrow=1}] at @s run tp @s ~ ~ ~ facing entity @e[team=Yellow,sort=nearest,limit=1]
execute if entity @s[tag=YellowBot,scores={botarrow=1}] at @s run tp @s ~ ~ ~ facing entity @e[team=Blue,sort=nearest,limit=1]
execute if entity @s[tag=BlueBot,scores={botarrow=1}] at @s run summon marker ~ ~ ~ {Tags:["BlueFireball"]}
execute if entity @s[tag=YellowBot,scores={botarrow=1}] at @s run summon marker ~ ~ ~ {Tags:["YellowFireball"]}
execute if entity @s[scores={botarrow=1}] at @s run playsound minecraft:item.armor.equip_generic master @a ~ ~ ~ 0.5 1
execute if entity @s[scores={botarrow=1}] at @s run tp @e[tag=LOSTracker,distance=..1,limit=1,sort=nearest] @s
execute if entity @s[scores={botarrow=1}] at @s run tp @e[tag=LOSTracker,distance=..1,limit=1,sort=nearest] ~ ~1.5 ~
execute as @e[tag=LOSTracker] at @s run function rr_bots:bot/attacks/lostrack
execute if entity @s[tag=BotFireArrow,scores={botarrow=10}] at @s run playsound minecraft:entity.skeleton.shoot master @a ~ ~ ~ 1 1




execute if entity @s[tag=BotFireArrow,scores={botarrow=10}] at @s anchored eyes positioned ^ ^ ^ run function rr_bots:bot/attacks/fireball/fireballfly1

#execute at @s run function rr_bots:bot/animations/shootanim

tag @s[scores={botarrow=10..}] remove BotFireArrow
tag @s[scores={botarrow=10..}] remove BotArrows
tag @s[scores={botarrow=10..}] remove BOTCONTROL
scoreboard players remove @s[scores={botarrow=10..}] botarrowitems 1
scoreboard players reset @s[scores={botarrow=10..}] botarrow