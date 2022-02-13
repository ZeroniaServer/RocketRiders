scoreboard players set $ChasePlayers CmdData 0
execute as @a[team=Blue] run scoreboard players add $ChasePlayers CmdData 1
execute if score $ChasePlayers CmdData matches 1 run function rr_chase:chasegear/equip/blue
execute if score $ChasePlayers CmdData matches 2 run function rr_chase:chasegear/equip/yellow
execute if score $ChasePlayers CmdData matches 3 run function rr_chase:chasegear/equip/red
execute if score $ChasePlayers CmdData matches 4 run function rr_chase:chasegear/equip/green
execute if score $ChasePlayers CmdData matches 5 run function rr_chase:chasegear/equip/purple
execute if score $ChasePlayers CmdData matches 6 run function rr_chase:chasegear/equip/pink
execute if score $ChasePlayers CmdData matches 7 run function rr_chase:chasegear/equip/orange
execute if score $ChasePlayers CmdData matches 8 run function rr_chase:chasegear/equip/strawberry
execute if score $ChasePlayers CmdData matches 9 run function rr_chase:chasegear/equip/mint
execute if score $ChasePlayers CmdData matches 10 run function rr_chase:chasegear/equip/apple
execute if score $ChasePlayers CmdData matches 11 run function rr_chase:chasegear/equip/banana
execute if score $ChasePlayers CmdData matches 12 run function rr_chase:chasegear/equip/blurple
execute if score $ChasePlayers CmdData matches 13.. run function rr_chase:chasegear/equip/white

scoreboard players reset $ChasePlayers CmdData