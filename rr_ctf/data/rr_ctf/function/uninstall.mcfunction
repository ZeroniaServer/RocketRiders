execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function rr_ctf:disable
tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=ctfLast] add needsForceClear
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=ctfLast] run function rr_ctf:arenaclear/areaclear
execute if entity @e[x=0,type=armor_stand,tag=rr_ctf,limit=1] run kill @e[x=0,type=armor_stand,tag=rr_ctf,limit=1]
scoreboard objectives remove carrying_flag_time
scoreboard objectives remove ctf_sidebar
scoreboard objectives remove MineWhiteGlass
scoreboard objectives remove MinePurpleGlass
scoreboard objectives remove canopyStreak
scoreboard players reset * gamemodeID
bossbar remove rr_ctf:flag/yellow_right
bossbar remove rr_ctf:flag/yellow_left
bossbar remove rr_ctf:flag/blue_right
bossbar remove rr_ctf:flag/blue_left
execute unless entity @e[x=0,type=marker,tag=PlacerClear] run function game:forcestop
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=ctfLast] unless entity @e[x=0,type=marker,tag=PlacerClear] run function rr_ctf:game/while_phase/match/closing
tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=ctfLast] remove ctfLast
execute unless entity @e[x=0,type=armor_stand,tag=rr_ctf,limit=1] run tellraw @s {"text":"Capture the Flag Mode uninstalled.","color":"red","bold":true}
execute unless entity @e[x=0,type=armor_stand,tag=rr_ctf,limit=1] run tellraw @s {"text":"Click here to disable the Capture the Flag Mode datapack (recommended).","color":"red","underlined":true,"click_event":{"action":"run_command","command":"/datapack disable 'file/rr_ctf'"},"hover_event":{"action":"show_text","value":{"color":"red","text":"Click to disable the Capture The Flag datapack"}}}
scoreboard players add @e[x=0,type=armor_stand,tag=Selection,limit=1] refreshsigns 1