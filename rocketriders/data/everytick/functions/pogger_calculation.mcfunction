##Blatantly stolen from Meteor Miners but it works

scoreboard players remove @a CmdData 1
execute if entity @a[scores={CmdData=1024..}] run scoreboard players remove @a CmdData 1024
execute if entity @a[scores={CmdData=512..}] run scoreboard players remove @a CmdData 512
execute if entity @a[scores={CmdData=256..}] run scoreboard players remove @a CmdData 256
execute if entity @a[scores={CmdData=128..}] run scoreboard players remove @a CmdData 128
execute if entity @a[scores={CmdData=64..}] run scoreboard players remove @a CmdData 64
execute if entity @a[scores={CmdData=32..}] run scoreboard players remove @a CmdData 32
execute if entity @a[scores={CmdData=16..}] run scoreboard players remove @a CmdData 16
execute if entity @a[scores={CmdData=8..}] run scoreboard players remove @a CmdData 8
execute if entity @a[scores={CmdData=4..}] run scoreboard players remove @a CmdData 4
execute if entity @a[scores={CmdData=2..}] run scoreboard players remove @a CmdData 2
execute if entity @a[scores={CmdData=1..}] run scoreboard players remove @a CmdData 1

execute if entity @a[scores={CmdData=1..}] run function everytick:pogger_calculation