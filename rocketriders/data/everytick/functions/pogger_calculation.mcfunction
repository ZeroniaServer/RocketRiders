##Blatantly stolen from Meteor Miners but it works
scoreboard players remove @a[x=0] CmdData 1
execute if entity @a[x=0,scores={CmdData=1024..}] run scoreboard players remove @a[x=0] CmdData 1024
execute if entity @a[x=0,scores={CmdData=512..}] run scoreboard players remove @a[x=0] CmdData 512
execute if entity @a[x=0,scores={CmdData=256..}] run scoreboard players remove @a[x=0] CmdData 256
execute if entity @a[x=0,scores={CmdData=128..}] run scoreboard players remove @a[x=0] CmdData 128
execute if entity @a[x=0,scores={CmdData=64..}] run scoreboard players remove @a[x=0] CmdData 64
execute if entity @a[x=0,scores={CmdData=32..}] run scoreboard players remove @a[x=0] CmdData 32
execute if entity @a[x=0,scores={CmdData=16..}] run scoreboard players remove @a[x=0] CmdData 16
execute if entity @a[x=0,scores={CmdData=8..}] run scoreboard players remove @a[x=0] CmdData 8
execute if entity @a[x=0,scores={CmdData=4..}] run scoreboard players remove @a[x=0] CmdData 4
execute if entity @a[x=0,scores={CmdData=2..}] run scoreboard players remove @a[x=0] CmdData 2
execute if entity @a[x=0,scores={CmdData=1..}] run scoreboard players remove @a[x=0] CmdData 1
execute if entity @a[x=0,scores={CmdData=1..}] run function everytick:pogger_calculation