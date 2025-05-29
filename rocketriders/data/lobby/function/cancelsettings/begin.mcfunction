scoreboard players set $mcancelcount CmdData 10
setblock -57 203 78 minecraft:cherry_wall_sign[facing=west]{front_text:{has_glowing_text:true,color:"red",messages:[{"text":""},{"translate":"Cancel Match","color":"red","bold":true},{"translate":"AVAILABLE IN","color":"white","with":[{"text":"10","color":"#ff8585"}]},{"text":"","click_event":{"action":"run_command","command":"/trigger cancelMatch set 1"}}]}}
schedule clear lobby:cancelsettings/counter
schedule function lobby:cancelsettings/counter 1s