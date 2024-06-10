scoreboard players add $knight CmdData 0
scoreboard players add $archer CmdData 0
scoreboard players add $mage CmdData 0

tellraw @s [{"text":"Knights: "},{"score":{"name":"$knight","objective":"CmdData"}}]
tellraw @s [{"text":"Archers: "},{"score":{"name":"$archer","objective":"CmdData"}}]
tellraw @s [{"text":"Mages: "},{"score":{"name":"$mage","objective":"CmdData"}}]