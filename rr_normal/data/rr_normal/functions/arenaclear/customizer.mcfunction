#management
data merge block -69 192 74 {Text1:'{"text":"Gamemode:","color":"#6b006b","clickEvent":{"action":"run_command","value":"scoreboard players add @e[predicate=custom:indimension,type=armor_stand,tag=Selection,scores={refreshsigns=..0}] SetGamemode 1"}}',Text2:'{"text":"Normal","color":"light_purple","clickEvent":{"action":"run_command","value":"execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,scores={refreshsigns=..0}] run playsound ui.button.click master @a[predicate=custom:indimension] ~ ~ ~ 1 1"}}',Text4:'{"text":"(Click for next)","color":"gray","italic":true,"clickEvent":{"action":"run_command","value":"scoreboard players add @e[predicate=custom:indimension,type=armor_stand,tag=Selection] refreshsigns 1"}}'}
execute if entity @s[scores={refreshsigns=1..}] run data merge block -69 192 74 {Text1:'{"text":"Gamemode:","color":"#6b006b"}'}
data merge block -69 191 74 {Text1:'{"text":""}',Text2:'{"color":"light_purple","clickEvent":{"action":"run_command","value":"function rr_normal:info"},"text":"Gamemode Info"}',Text3:'{"clickEvent":{"action":"run_command","value":"execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=!SignsRefreshed] run playsound ui.button.click master @a[predicate=custom:indimension] ~ ~ ~ 1 1"},"text":" "}',Text4:'{"text":""}'}

tag @s add GamemodeRefreshed