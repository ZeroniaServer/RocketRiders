scoreboard players set $mcancelcount CmdData 10
setblock -57 203 78 minecraft:cherry_wall_sign[facing=west]{front_text:{has_glowing_text:true,color:"red",messages:["",{bold:true,color:"red",text:"Edit Settings"},[{color:"white",text:"AVAILABLE IN"},{color:"#FF8585",text:"10"}],{click_event:{action:"run_command",command:"trigger lobby.edit_settings set 1"},text:""}]}}
schedule clear lobby:cancelsettings/counter
schedule function lobby:cancelsettings/counter 1s