#management
data modify block -69 192 74 front_text.messages[0] set value '{"text":"Gamemode:","color":"#6b006b","clickEvent":{"action":"run_command","value":"/scoreboard players add @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={refreshsigns=..0}] SetGamemode 1"}}'
data modify block -69 192 74 front_text.messages[1] set value '{"text":"PVE","color":"light_purple","clickEvent":{"action":"run_command","value":"/execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={refreshsigns=..0}] run playsound ui.button.click master @a[x=0] ~ ~ ~ 1 1"}}'
data modify block -69 192 74 front_text.messages[3] set value '{"text":"(Click for next)","color":"gray","italic":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add @e[x=0,type=armor_stand,tag=Selection,limit=1] refreshsigns 1"}}'
execute if entity @s[scores={refreshsigns=1..}] run data modify block -69 192 74 front_text.messages[0] set value '{"text":"Gamemode:","color":"#6b006b"}'
data modify block -69 191 74 front_text.messages[0] set value '{"text":""}'
data modify block -69 191 74 front_text.messages[1] set value '{"color":"light_purple","clickEvent":{"action":"run_command","value":"/function rr_pve:info"},"text":"Gamemode Info"}'
data modify block -69 191 74 front_text.messages[2] set value '{"clickEvent":{"action":"run_command","value":"/execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!SignsRefreshed] run playsound ui.button.click master @a[x=0] ~ ~ ~ 1 1"},"text":" "}'
data modify block -69 191 74 front_text.messages[3] set value '{"text":""}'

tag @s add GamemodeRefreshed