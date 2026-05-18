execute unless entity @s[type=player] run return 0

execute positioned -57 203 78 run playsound ui.button.click master @s ~ ~ ~ 1 1

execute if function lobby:cancelsettings/check_unavailable run return run scoreboard players reset @s editSettings

execute if score @s editSettings matches 1 run scoreboard players set @s LobbyWarp 2
scoreboard players reset @s editSettings

scoreboard players set $mcancel CmdData 1
function lobby:cancelsettings/stopper
