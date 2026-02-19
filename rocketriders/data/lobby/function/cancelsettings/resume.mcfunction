scoreboard players set $mcancelcount CmdData 10
data modify block -57 203 78 front_text.messages[2] set value [{color:"white",text:"AVAILABLE IN "},{color:"#ff8585",text:"10"}]
scoreboard players reset $mcancel CmdData
schedule function lobby:cancelsettings/counter 1s