scoreboard players set $mcancelcount CmdData 10
data modify block -57 203 78 front_text.messages[2] set value '{"translate":"AVAILABLE IN %s","color":"white","with":[{"text":"10","color":"#ff8585"}]}'
scoreboard players reset $mcancel CmdData
schedule function lobby:cancelsettings/counter 1s