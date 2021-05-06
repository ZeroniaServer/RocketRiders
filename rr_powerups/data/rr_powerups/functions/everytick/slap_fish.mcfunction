tag @s[nbt={SelectedItem:{id:"minecraft:cooked_salmon"}}] add HoldingSlapFish
execute if entity @s[tag=HoldingSlapFish,scores={DealtDamage=1..}] at @s run playsound minecraft:entity.guardian.flop master @a ~ ~ ~ 1 1
clear @s[tag=HoldingSlapFish,scores={DealtDamage=1..}] cooked_salmon 1
scoreboard players set @s[scores={DealtDamage=1..}] DealtDamage -1
tag @s[scores={DealtDamage=-1},tag=HoldingSlapFish] remove HoldingSlapFish
scoreboard players reset @s[scores={DealtDamage=-1}] DealtDamage
execute unless entity @s[nbt={SelectedItem:{id:"minecraft:cooked_salmon"}}] run tag @s remove HoldingSlapFish
