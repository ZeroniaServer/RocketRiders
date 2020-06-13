#bee shield
execute as @a[scores={DrinkHoney=1..},team=Yellow] at @s run summon armor_stand ~ ~ ~ {Tags:["BeeShieldDisplay","YellowBee"],Invisible:1b,Invulnerable:1b,Silent:1b,DisabledSlots:4144959}
execute as @a[scores={DrinkHoney=1..},team=Blue] at @s run summon armor_stand ~ ~ ~ {Tags:["BeeShieldDisplay","BlueBee"],Invisible:1b,Invulnerable:1b,Silent:1b,DisabledSlots:4144959}
scoreboard players add @e[tag=BeeShieldDisplay] BeeShieldTime 1
execute as @a[scores={DrinkHoney=1..}] at @s anchored eyes run tp @e[tag=BeeShieldDisplay,scores={BeeShieldTime=1},distance=..4,limit=1,sort=nearest] @s
execute as @a[scores={DrinkHoney=1..}] at @s as @e[tag=BeeShieldDisplay,scores={BeeShieldTime=1},distance=..4,limit=1,sort=nearest] at @s run function rr_powerups:everytick/projectile
clear @a glass_bottle
scoreboard players reset @a DrinkHoney
replaceitem entity @e[tag=BeeShieldDisplay,scores={BeeShieldTime=1}] armor.head honey_block
execute as @e[tag=BeeShieldDisplay] at @s run playsound minecraft:block.honey_block.slide block @a ~ ~ ~ 2 0.8
execute as @e[tag=BeeShieldDisplay] at @s run particle minecraft:block honey_block ~ ~ ~ 0 0 0 1 10

#placement
execute as @e[tag=YellowBee,scores={BeeShieldTime=20}] at @s run fill ~-1 ~-1 ~ ~1 ~1 ~ bee_nest[facing=south,honey_level=5]{Bees:[{EntityData:{id:"minecraft:bee",Anger:1000,HasNectar:1b,Team:"Yellow"}},{EntityData:{id:"minecraft:bee",Anger:1000,HasNectar:1b,Team:"Yellow"}},{EntityData:{id:"minecraft:bee",Anger:1000,HasNectar:1b,Team:"Yellow"}}]} replace air
execute as @e[tag=YellowBee,scores={BeeShieldTime=20}] at @s run fill ~ ~2 ~ ~ ~2 ~ bee_nest[facing=south,honey_level=5]{Bees:[{EntityData:{id:"minecraft:bee",Anger:1000,HasNectar:1b,Team:"Yellow"}},{EntityData:{id:"minecraft:bee",Anger:1000,HasNectar:1b,Team:"Yellow"}},{EntityData:{id:"minecraft:bee",Anger:1000,HasNectar:1b,Team:"Yellow"}}]} replace air
execute as @e[tag=YellowBee,scores={BeeShieldTime=20}] at @s run fill ~ ~-2 ~ ~ ~-2 ~ bee_nest[facing=south,honey_level=5]{Bees:[{EntityData:{id:"minecraft:bee",Anger:1000,HasNectar:1b,Team:"Yellow"}},{EntityData:{id:"minecraft:bee",Anger:1000,HasNectar:1b,Team:"Yellow"}},{EntityData:{id:"minecraft:bee",Anger:1000,HasNectar:1b,Team:"Yellow"}}]} replace air
execute as @e[tag=YellowBee,scores={BeeShieldTime=20}] at @s run fill ~-2 ~ ~ ~-2 ~ ~ bee_nest[facing=south,honey_level=5]{Bees:[{EntityData:{id:"minecraft:bee",Anger:1000,HasNectar:1b,Team:"Yellow"}},{EntityData:{id:"minecraft:bee",Anger:1000,HasNectar:1b,Team:"Yellow"}},{EntityData:{id:"minecraft:bee",Anger:1000,HasNectar:1b,Team:"Yellow"}}]} replace air
execute as @e[tag=YellowBee,scores={BeeShieldTime=20}] at @s run fill ~2 ~ ~ ~2 ~ ~ bee_nest[facing=south,honey_level=5]{Bees:[{EntityData:{id:"minecraft:bee",Anger:1000,HasNectar:1b,Team:"Yellow"}},{EntityData:{id:"minecraft:bee",Anger:1000,HasNectar:1b,Team:"Yellow"}},{EntityData:{id:"minecraft:bee",Anger:1000,HasNectar:1b,Team:"Yellow"}}]} replace air

execute as @e[tag=BlueBee,scores={BeeShieldTime=20}] at @s run fill ~-1 ~-1 ~ ~1 ~1 ~ bee_nest[facing=north,honey_level=5]{Bees:[{EntityData:{id:"minecraft:bee",Anger:1000,HasNectar:1b,Team:"Blue"}},{EntityData:{id:"minecraft:bee",Anger:1000,HasNectar:1b,Team:"Blue"}},{EntityData:{id:"minecraft:bee",Anger:1000,HasNectar:1b,Team:"Blue"}}]} replace air
execute as @e[tag=BlueBee,scores={BeeShieldTime=20}] at @s run fill ~ ~2 ~ ~ ~2 ~ bee_nest[facing=north,honey_level=5]{Bees:[{EntityData:{id:"minecraft:bee",Anger:1000,HasNectar:1b,Team:"Blue"}},{EntityData:{id:"minecraft:bee",Anger:1000,HasNectar:1b,Team:"Blue"}},{EntityData:{id:"minecraft:bee",Anger:1000,HasNectar:1b,Team:"Blue"}}]} replace air
execute as @e[tag=BlueBee,scores={BeeShieldTime=20}] at @s run fill ~ ~-2 ~ ~ ~-2 ~ bee_nest[facing=north,honey_level=5]{Bees:[{EntityData:{id:"minecraft:bee",Anger:1000,HasNectar:1b,Team:"Blue"}},{EntityData:{id:"minecraft:bee",Anger:1000,HasNectar:1b,Team:"Blue"}},{EntityData:{id:"minecraft:bee",Anger:1000,HasNectar:1b,Team:"Blue"}}]} replace air
execute as @e[tag=BlueBee,scores={BeeShieldTime=20}] at @s run fill ~-2 ~ ~ ~-2 ~ ~ bee_nest[facing=north,honey_level=5]{Bees:[{EntityData:{id:"minecraft:bee",Anger:1000,HasNectar:1b,Team:"Blue"}},{EntityData:{id:"minecraft:bee",Anger:1000,HasNectar:1b,Team:"Blue"}},{EntityData:{id:"minecraft:bee",Anger:1000,HasNectar:1b,Team:"Blue"}}]} replace air
execute as @e[tag=BlueBee,scores={BeeShieldTime=20}] at @s run fill ~2 ~ ~ ~2 ~ ~ bee_nest[facing=north,honey_level=5]{Bees:[{EntityData:{id:"minecraft:bee",Anger:1000,HasNectar:1b,Team:"Blue"}},{EntityData:{id:"minecraft:bee",Anger:1000,HasNectar:1b,Team:"Blue"}},{EntityData:{id:"minecraft:bee",Anger:1000,HasNectar:1b,Team:"Blue"}}]} replace air

execute as @e[tag=BeeShieldDisplay,scores={BeeShieldTime=20}] at @s run fill ~ ~ ~ ~ ~ ~ tnt[unstable=true] replace bee_nest
execute as @e[tag=BeeShieldDisplay,scores={BeeShieldTime=20}] at @s run summon area_effect_cloud ~ ~ ~ {Duration:200000000,Tags:["BeeShield"]}
execute as @e[tag=BeeShieldDisplay,scores={BeeShieldTime=20}] run kill @s

#kill bees
kill @e[type=bee,nbt={Anger:0s}]