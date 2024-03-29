##Replaces display signs around the Lobby to remove extra playsounds from 1.0.0 worlds
setblock -80 204 135 air
setblock -70 205 49 air
setblock -61 206 58 air
setblock 18 204 21 air
setblock 16 204 62 air
setblock 14 204 94 air
setblock 18 204 135 air

setblock -80 204 135 minecraft:spruce_sign[rotation=8,waterlogged=false]{front_text:{messages:['{"text":""}', '{"color":"green","text":"TomaTwo"}', '{"italic":true,"color":"gray","clickEvent":{"action":"run_command","value":"trigger displayinfo set 6"},"text":"(Click for info)"}', '{"text":""}'], has_glowing_text: false, color: "black"}}
setblock -70 205 49 minecraft:spruce_sign[rotation=0,waterlogged=false]{front_text:{messages:['{"text":""}', '{"color":"light_purple","text":"Vortex"}', '{"italic":true,"color":"gray","clickEvent":{"action":"run_command","value":"trigger displayinfo set 2"},"text":"(Click for info)"}', '{"text":""}'], has_glowing_text: false, color: "black"}}
setblock -61 206 58 minecraft:spruce_sign[rotation=0,waterlogged=false]{front_text:{messages:['{"text":""}', '{"color":"light_purple","text":"Obsidian Shield"}', '{"italic":true,"color":"gray","clickEvent":{"action":"run_command","value":"trigger displayinfo set 1"},"text":"(Click for info)"}', '{"text":""}'], has_glowing_text: false, color: "black"}}
setblock 18 204 21 minecraft:spruce_sign[rotation=0,waterlogged=false]{front_text:{messages:['{"text":""}', '{"color":"green","text":"Catapult"}', '{"italic":true,"color":"gray","clickEvent":{"action":"run_command","value":"trigger displayinfo set 7"},"text":"(Click for info)"}', '{"text":""}'], has_glowing_text: false, color: "black"}}
setblock 16 204 62 minecraft:spruce_sign[rotation=4,waterlogged=false]{front_text:{messages:['{"text":""}', '{"color":"light_purple","text":"Shield"}', '{"italic":true,"color":"gray","clickEvent":{"action":"run_command","value":"trigger displayinfo set 4"},"text":"(Click for info)"}', '{"text":""}'], has_glowing_text: false, color: "black"}}
setblock 14 204 94 minecraft:spruce_sign[rotation=4,waterlogged=false]{front_text:{messages:['{"text":""}', '{"color":"light_purple","text":"Canopy"}', '{"italic":true,"color":"gray","clickEvent":{"action":"run_command","value":"trigger displayinfo set 3"},"text":"(Click for info)"}', '{"text":""}'], has_glowing_text: false, color: "black"}}
setblock 18 204 135 minecraft:spruce_sign[rotation=8,waterlogged=false]{front_text:{messages:['{"text":""}', '{"color":"yellow","text":"Hurricane"}', '{"italic":true,"color":"gray","clickEvent":{"action":"run_command","value":"trigger displayinfo set 8"},"text":"(Click for info)"}', '{"text":""}'], has_glowing_text: false, color: "black"}}