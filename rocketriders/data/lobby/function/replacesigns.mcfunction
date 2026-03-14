##Replaces display signs around the Lobby to remove extra playsounds from 1.0.0 worlds
setblock -80 204 135 air
setblock -70 205 49 air
setblock -61 206 58 air
setblock 18 204 21 air
setblock 16 204 62 air
setblock 14 204 94 air
setblock 18 204 135 air

setblock -80 204 135 minecraft:spruce_sign[rotation=8,waterlogged=false]{front_text:{color:"black",has_glowing_text:0b,messages:[{"text":""},{"color":"green","text":"TomaTwo"},{"italic":true,"color":"gray","click_event":{"action":"run_command","command":"function lobby:displayinfo/tomatwo"},"text":"(Click for info)"},{"text":""}]}}
setblock -70 205 49 minecraft:spruce_sign[rotation=0,waterlogged=false]{front_text:{color:"black",has_glowing_text:0b,messages:[{"text":""},{"color":"light_purple","text":"Vortex"},{"italic":true,"color":"gray","click_event":{"action":"run_command","command":"function lobby:displayinfo/vortex"},"text":"(Click for info)"},{"text":""}]}}
setblock -61 206 58 minecraft:spruce_sign[rotation=0,waterlogged=false]{front_text:{color:"black",has_glowing_text:0b,messages:[{"text":""},{"color":"light_purple","text":"Obsidian Shield"},{"italic":true,"color":"gray","click_event":{"action":"run_command","command":"function lobby:displayinfo/obsidian_shield"},"text":"(Click for info)"},{"text":""}]}}
setblock 18 204 21 minecraft:spruce_sign[rotation=0,waterlogged=false]{front_text:{color:"black",has_glowing_text:0b,messages:[{"text":""},{"color":"green","text":"Catapult"},{"italic":true,"color":"gray","click_event":{"action":"run_command","command":"function lobby:displayinfo/catapult"},"text":"(Click for info)"},{"text":""}]}}
setblock 16 204 62 minecraft:spruce_sign[rotation=4,waterlogged=false]{front_text:{color:"black",has_glowing_text:0b,messages:[{"text":""},{"color":"light_purple","text":"Shield"},{"italic":true,"color":"gray","click_event":{"action":"run_command","command":"function lobby:displayinfo/shield"},"text":"(Click for info)"},{"text":""}]}}
setblock 14 204 94 minecraft:spruce_sign[rotation=4,waterlogged=false]{front_text:{color:"black",has_glowing_text:0b,messages:[{"text":""},{"color":"light_purple","text":"Canopy"},{"italic":true,"color":"gray","click_event":{"action":"run_command","command":"function lobby:displayinfo/canopy"},"text":"(Click for info)"},{"text":""}]}}
setblock 18 204 135 minecraft:spruce_sign[rotation=8,waterlogged=false]{front_text:{color:"black",has_glowing_text:0b,messages:[{"text":""},{"color":"yellow","text":"Hurricane"},{"italic":true,"color":"gray","click_event":{"action":"run_command","command":"function lobby:displayinfo/hurricane"},"text":"(Click for info)"},{"text":""}]}}
