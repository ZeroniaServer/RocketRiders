#management
data modify block -69 192 74 front_text.messages[0] set value {"text":"Gamemode:","color":"#6b006b","click_event":{"action":"run_command","command":"function arenaclear:modification_room_signs/interact_with_gamemode_sign"}}
data modify block -69 192 74 front_text.messages[1] set value {"text":"Chase","color":"light_purple"}
data modify block -69 192 74 front_text.messages[3] set value {"text":"(Click for next)","color":"gray","italic":true}
execute if entity @s[scores={refreshsigns=1..}] run data modify block -69 192 74 front_text.messages[0] set value {"text":"Gamemode:","color":"#6b006b"}
data modify block -69 191 74 front_text.messages[0] set value {"text":""}
data modify block -69 191 74 front_text.messages[1] set value {"color":"light_purple","click_event":{"action":"run_command","command":"/function rr_chase:info"},"text":"Gamemode Info"}
data modify block -69 191 74 front_text.messages[2] set value {"click_event":{"action":"run_command","command":"/execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SignsRefreshed] run playsound ui.button.click master @a[x=0] ~ ~ ~ 1 1"},"text":" "}
data modify block -69 191 74 front_text.messages[3] set value {"text":""}

tag @s add GamemodeRefreshed