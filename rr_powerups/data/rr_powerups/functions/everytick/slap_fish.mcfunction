tag @s[nbt={SelectedItem:{id:"minecraft:cooked_salmon"}}] add HoldingSlapFish
execute if entity @s[tag=HoldingSlapFish,scores={DealtDamage=1..}] at @s run playsound minecraft:entity.guardian.flop player @a ~ ~ ~ 1 1 1
# execute if entity @s[tag=HoldingSlapFish,scores={DealtDamage=1..}] at @s run playsound minecraft:entity.player.attack.knockback player @a ~ ~ ~ 1 1 1
clear @s[tag=HoldingSlapFish,scores={DealtDamage=1..}] cooked_salmon
scoreboard players reset @a[scores={DealtDamage=1..}] DealtDamage
tag @s[tag=HoldingSlapFish] remove HoldingSlapFish