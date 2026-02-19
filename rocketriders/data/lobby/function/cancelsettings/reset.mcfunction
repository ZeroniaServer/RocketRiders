schedule clear lobby:cancelsettings/counter
scoreboard players set $mcancelcount CmdData 10
scoreboard players set $mcancel CmdData -1
data modify block -57 203 78 front_text.messages[2] set value {color:"white",text:"UNAVAILABLE"}