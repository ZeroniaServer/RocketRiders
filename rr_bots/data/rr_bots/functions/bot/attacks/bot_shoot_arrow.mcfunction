tag @s remove BOTCONTROL
scoreboard players add @s botarrow 1

execute as @s[tag=BlueBot,scores={botarrow=1}] at @s run tp @s ~ ~ ~ facing entity @e[team=Yellow,sort=nearest,limit=1]
execute as @s[tag=YellowBot,scores={botarrow=1}] at @s run tp @s ~ ~ ~ facing entity @e[team=Blue,sort=nearest,limit=1]
execute as @s[tag=BlueBot,scores={botarrow=1}] at @s run summon marker ~ ~ ~ {Tags:["LOSTracker","LOSTrackerBlue"]}
execute as @s[tag=YellowBot,scores={botarrow=1}] at @s run summon marker ~ ~ ~ {Tags:["LOSTracker","LOSTrackerYellow"]}
execute as @s[scores={botarrow=1}] at @s run playsound minecraft:item.armor.equip_generic master @a ~ ~ ~ 0.5 1
execute as @s[scores={botarrow=1}] at @s run tp @e[tag=LOSTracker,distance=..1,limit=1,sort=nearest,type=marker] @s
execute as @s[scores={botarrow=1}] at @s run tp @e[tag=LOSTracker,distance=..1,limit=1,sort=nearest,type=marker] ~ ~1.5 ~
execute as @e[tag=LOSTracker,type=marker] at @s run function rr_bots:bot/attacks/lostrack
execute as @s[tag=BotFireArrow,scores={botarrow=10}] at @s run playsound minecraft:entity.skeleton.shoot master @a ~ ~ ~ 1 1




execute as @s[tag=BotFireArrow,scores={botarrow=10}] at @s anchored eyes positioned ^ ^ ^ run function rr_bots:bot/attacks/arrowfly1

execute as @s at @s run function rr_bots:bot/animations/shootanim

tag @s[scores={botarrow=30}] remove BotFireArrow
tag @s[scores={botarrow=30}] remove BotArrows
tag @s[scores={botarrow=30}] remove BOTCONTROL
scoreboard players remove @s[scores={botarrow=30}] botarrowitems 1
scoreboard players reset @s[scores={botarrow=30..}] botarrow