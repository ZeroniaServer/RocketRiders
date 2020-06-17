summon area_effect_cloud ~ ~ ~ {Tags:["RandomLossSplash"],Duration:2000000000}
#If you want to add more splashes just increase this number. (amount of splashes + 1)
scoreboard players set @e[tag=RandomLossSplash] RNGmax 18

execute as @e[tag=RandomLossSplash] store result score @s RNGscore run data get entity @s UUIDMost 0.00000000023283064365386962890625
execute as @e[tag=RandomLossSplash] store result score @s RNGscore run scoreboard players operation @s RNGscore %= @s RNGmax

execute store result score @s RNGscore run scoreboard players get @e[tag=RandomLossSplash,limit=1] RNGscore

#Add splashes here (just copy paste the line and change the score)
execute as @e[tag=RandomLossSplash,scores={RNGscore=0..3}] run title @a[tag=Loser] subtitle ["",{"text":"Better luck next time...","color":"red"}]
execute as @e[tag=RandomLossSplash,scores={RNGscore=4}] run title @a[tag=Loser] subtitle ["",{"text":"At least we have a cool flag now?","color":"red"}]
execute as @e[tag=RandomLossSplash,scores={RNGscore=5}] run title @a[tag=Loser] subtitle ["",{"text":"Exceeded missile deployment limit.","color":"red"}]
execute as @e[tag=RandomLossSplash,scores={RNGscore=6}] run title @a[tag=Loser] subtitle ["",{"text":"Huh, I swear I saw portals there before.","color":"red"}]
execute as @e[tag=RandomLossSplash,scores={RNGscore=7}] run title @a[tag=Loser] subtitle ["",{"text":"The enemy cheated, our defence were impregnable!","color":"red"}]
execute as @e[tag=RandomLossSplash,scores={RNGscore=8}] run title @a[tag=Loser] subtitle ["",{"text":"At least you tried...","color":"red"}]
execute as @e[tag=RandomLossSplash,scores={RNGscore=9}] run title @a[tag=Loser] subtitle ["",{"text":"So close...","color":"red"}]
execute as @e[tag=RandomLossSplash,scores={RNGscore=10}] run title @a[tag=Loser] subtitle ["",{"text":"Your enemy was just having a really good day","color":"red"}]
execute as @e[tag=RandomLossSplash,scores={RNGscore=11}] run title @a[tag=Loser] subtitle ["",{"text":"Next time we're using bedrock for our defence","color":"red"}]
execute as @e[tag=RandomLossSplash,scores={RNGscore=12}] run title @a[tag=Loser] subtitle ["",{"text":"It was lag. I swear!","color":"red"}]
execute as @e[tag=RandomLossSplash,scores={RNGscore=13}] run title @a[tag=Loser] subtitle ["",{"text":"My ping! Why!","color":"red"}]
execute as @e[tag=RandomLossSplash,scores={RNGscore=14}] run title @a[tag=Loser] subtitle ["",{"text":"Well meet again in a rematch!","color":"red"}]
execute as @e[tag=RandomLossSplash,scores={RNGscore=15}] run title @a[tag=Loser] subtitle ["",{"text":"I guess the splashes didn't save the portal...","color":"red"}]
execute as @e[tag=RandomLossSplash,scores={RNGscore=16}] run title @a[tag=Loser] subtitle ["",{"text":":(","color":"red"}]
execute as @e[tag=RandomLossSplash,scores={RNGscore=17}] run title @a[tag=Loser] subtitle ["",{"text":"That bullet punched straight through our wall!","color":"red"}]
kill @e[tag=RandomLossSplash]