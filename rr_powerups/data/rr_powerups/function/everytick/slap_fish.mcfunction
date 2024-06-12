tag @s remove HoldingSlapFish
execute if items entity @s weapon.mainhand cooked_salmon run tag @s add HoldingSlapFish
execute if entity @s[tag=HoldingSlapFish,scores={DealtDamage=1..}] at @s run playsound minecraft:entity.guardian.flop master @a[x=0] ~ ~ ~ 1 1
clear @s[tag=HoldingSlapFish,scores={DealtDamage=1..}] cooked_salmon 1
scoreboard players reset @s DealtDamage