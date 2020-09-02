##Adds 1 to Repeat Settings score and cycles back after 4
##Necessary so accurate score is displayed within same tick
scoreboard players add @s RepeatSettings 1
scoreboard players set @s[scores={RepeatSettings=5..}] RepeatSettings 1