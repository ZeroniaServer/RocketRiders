tag @s remove HoldingSlapFish
tag @s[nbt={SelectedItem:{id:"minecraft:cooked_salmon"}}] add HoldingSlapFish
execute if entity @s[tag=HoldingSlapFish,scores={DealtDamage=1..}] at @s run playsound minecraft:entity.guardian.flop master @a[predicate=custom:indimension] ~ ~ ~ 1 1
clear @s[tag=HoldingSlapFish,scores={DealtDamage=1..}] cooked_salmon 1
scoreboard players reset @s DealtDamage