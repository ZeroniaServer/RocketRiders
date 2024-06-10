##Notifies player of voting options
tellraw @s [""]
tellraw @s ["",{"text":"Rocket ","bold":true,"color":"blue","extra":[{"text":"Riders","bold":true,"color":"gold"},{"text":" - ","color":"dark_gray"},{"text":"C","bold":true,"color":"dark_aqua"},{"text":"K","bold":true,"color":"gold"},{"text":" Server Mode: ","bold":true,"color":"green"}],"clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/project/rocket-riders/"},"hoverEvent":{"action":"show_text","contents":[{"text":"Here on ","color":"white"},{"text":"Cube","bold":true,"color":"dark_aqua"},{"text":"Krowd","bold":true,"color":"gold"},{"text":" we use a modified version of ","color":"white"},{"text":"Rocket ","bold":true,"color":"blue"},{"text":"Riders","bold":true,"color":"gold"},{"text":". Players vote to select the next gamemode and map design instead of using the Modification Room.\n","color":"white"},"\n",{"text":"Available gamemodes:","color":"gray"},"\n",{"text":"- Normal Mode","color":"green"},"\n",{"text":"- Powerups Mode","color":"green"},"\n",{"text":"- Swap Mode","color":"green"},"\n",{"text":"- Capture The Flag","color":"green"},"\n",{"text":"- Crusade Mode","color":"green"},"\n","\n",{"text":"Unavailable gamemodes:","color":"gray"},"\n",{"text":"- 1v1 Duel Mode ","color":"red"},{"text":"(playable in /rr3 or /rr4)","color":"gray"},"\n",{"text":"- Chase Mode ","color":"red"},"\n\n",{"text":"(To get access to unavailable ","color":"white"},{"text":"Rocket ","bold":true,"color":"blue"},{"text":"Riders","bold":true,"color":"gold"},{"text":" features, go to ","color":"white"},{"text":"/rr0","bold":true,"color":"aqua"},{"text":" (","color":"gray"},{"text":"[","color":"dark_gray"},{"text":"M","color":"white"},{"text":"]","color":"dark_gray"},{"text":"+/","color":"gray"},{"text":"Donators","color":"yellow"},{"text":" only)","color":"gray"},{"text":" or ","color":"white"},{"text":"click now","color":"dark_aqua","underlined":true},{"text":" to visit the public download page!)","color":"white"}]}},{"text":"(hover for info)","italic":true,"color":"dark_gray"},{"text":"\n"},{"text":"Click below or use ","color":"dark_green"},{"text":"/vote ","color":"green","bold":true},{"text":"to vote for gamemodes and maps:","color":"dark_green"}]

execute if score $NormalMode servermode matches 0..1 run tellraw @s ["",{"text":"■ ","bold":true,"color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"This square indicates the \"Vote Priority\" level of the vote options.","color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 1"}},{"text":"1","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 1"}},{"text":") ","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 1"}},{"text":"Normal Mode","color":"#D586D5","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 1"}},{"text":", ","color":"#954B95","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 1"}},{"selector":"@e[x=0,tag=Maps,tag=ServermodeSet1,limit=1]","color":"#D586D5","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 1"}}]
execute if score $NormalMode servermode matches 2 run tellraw @s ["",{"text":"■ ","bold":true,"color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"This square indicates the \"Vote Priority\" level of the vote options.","color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 1"}},{"text":"1","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 1"}},{"text":") ","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 1"}},{"text":"Normal Mode","color":"#D586D5","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 1"}},{"text":", ","color":"#954B95","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 1"}},{"selector":"@e[x=0,tag=Maps,tag=ServermodeSet1,limit=1]","color":"#D586D5","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 1"}}]
execute if score $NormalMode servermode matches 3.. run tellraw @s ["",{"text":"■ ","bold":true,"color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"This square indicates the \"Vote Priority\" level of the vote options.","color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 1"}},{"text":"1","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 1"}},{"text":") ","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 1"}},{"text":"Normal Mode","color":"#D586D5","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 1"}},{"text":", ","color":"#954B95","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 1"}},{"selector":"@e[x=0,tag=Maps,tag=ServermodeSet1,limit=1]","color":"#D586D5","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 1"}}]

execute if score $PowerupsMode servermode matches 0..1 run tellraw @s ["",{"text":"■ ","bold":true,"color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"This square indicates the \"Vote Priority\" level of the vote options.","color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 2"}},{"text":"2","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 2"}},{"text":") ","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 2"}},{"text":"Powerups Mode","color":"#D586D5","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 2"}},{"text":", ","color":"#954B95","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 2"}},{"selector":"@e[x=0,tag=Maps,tag=ServermodeSet2,limit=1]","color":"#D586D5","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 2"}}]
execute if score $PowerupsMode servermode matches 2 run tellraw @s ["",{"text":"■ ","bold":true,"color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"This square indicates the \"Vote Priority\" level of the vote options.","color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 2"}},{"text":"2","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 2"}},{"text":") ","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 2"}},{"text":"Powerups Mode","color":"#D586D5","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 2"}},{"text":", ","color":"#954B95","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 2"}},{"selector":"@e[x=0,tag=Maps,tag=ServermodeSet2,limit=1]","color":"#D586D5","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 2"}}]
execute if score $PowerupsMode servermode matches 3.. run tellraw @s ["",{"text":"■ ","bold":true,"color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"This square indicates the \"Vote Priority\" level of the vote options.","color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 2"}},{"text":"2","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 2"}},{"text":") ","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 2"}},{"text":"Powerups Mode","color":"#D586D5","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 2"}},{"text":", ","color":"#954B95","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 2"}},{"selector":"@e[x=0,tag=Maps,tag=ServermodeSet2,limit=1]","color":"#D586D5","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 2"}}]

execute if score $SwapMode servermode matches 0..1 run tellraw @s ["",{"text":"■ ","bold":true,"color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"This square indicates the \"Vote Priority\" level of the vote options.","color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 3"}},{"text":"3","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 3"}},{"text":") ","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 3"}},{"text":"Swap Mode","color":"#D586D5","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 3"}},{"text":", ","color":"#954B95","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 3"}},{"selector":"@e[x=0,tag=Maps,tag=ServermodeSet3,limit=1]","color":"#D586D5","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 3"}}]
execute if score $SwapMode servermode matches 2 run tellraw @s ["",{"text":"■ ","bold":true,"color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"This square indicates the \"Vote Priority\" level of the vote options.","color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 3"}},{"text":"3","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 3"}},{"text":") ","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 3"}},{"text":"Swap Mode","color":"#D586D5","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 3"}},{"text":", ","color":"#954B95","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 3"}},{"selector":"@e[x=0,tag=Maps,tag=ServermodeSet3,limit=1]","color":"#D586D5","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 3"}}]
execute if score $SwapMode servermode matches 3.. run tellraw @s ["",{"text":"■ ","bold":true,"color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"This square indicates the \"Vote Priority\" level of the vote options.","color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 3"}},{"text":"3","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 3"}},{"text":") ","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 3"}},{"text":"Swap Mode","color":"#D586D5","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 3"}},{"text":", ","color":"#954B95","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 3"}},{"selector":"@e[x=0,tag=Maps,tag=ServermodeSet3,limit=1]","color":"#D586D5","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 3"}}]

execute if score $CTFMode servermode matches 0..1 run tellraw @s ["",{"text":"■ ","bold":true,"color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"This square indicates the \"Vote Priority\" level of the vote options.","color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 4"}},{"text":"4","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 4"}},{"text":") ","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 4"}},{"text":"Capture The Flag","color":"#D586D5","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 4"}},{"text":", ","color":"#954B95","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 4"}},{"selector":"@e[x=0,tag=Maps,tag=ServermodeSet4,limit=1]","color":"#D586D5","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 4"}}]
execute if score $CTFMode servermode matches 2 run tellraw @s ["",{"text":"■ ","bold":true,"color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"This square indicates the \"Vote Priority\" level of the vote options.","color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 4"}},{"text":"4","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 4"}},{"text":") ","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 4"}},{"text":"Capture The Flag","color":"#D586D5","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 4"}},{"text":", ","color":"#954B95","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 4"}},{"selector":"@e[x=0,tag=Maps,tag=ServermodeSet4,limit=1]","color":"#D586D5","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 4"}}]
execute if score $CTFMode servermode matches 3.. run tellraw @s ["",{"text":"■ ","bold":true,"color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"This square indicates the \"Vote Priority\" level of the vote options.","color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 4"}},{"text":"4","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 4"}},{"text":") ","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 4"}},{"text":"Capture The Flag","color":"#D586D5","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 4"}},{"text":", ","color":"#954B95","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 4"}},{"selector":"@e[x=0,tag=Maps,tag=ServermodeSet4,limit=1]","color":"#D586D5","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 4"}}]

execute if score $CrusadeMode servermode matches 0..1 run tellraw @s ["",{"text":"■ ","bold":true,"color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"This square indicates the \"Vote Priority\" level of the vote options.","color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 5"}},{"text":"5","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 5"}},{"text":") ","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 5"}},{"text":"Crusade Mode","color":"#D586D5","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 5"}},{"text":", ","color":"#954B95","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 5"}},{"selector":"@e[x=0,tag=Maps,tag=ServermodeSet5,limit=1]","color":"#D586D5","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 5"}}]
execute if score $CrusadeMode servermode matches 2 run tellraw @s ["",{"text":"■ ","bold":true,"color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"This square indicates the \"Vote Priority\" level of the vote options.","color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 5"}},{"text":"5","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 5"}},{"text":") ","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 5"}},{"text":"Crusade Mode","color":"#D586D5","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 5"}},{"text":", ","color":"#954B95","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 5"}},{"selector":"@e[x=0,tag=Maps,tag=ServermodeSet5,limit=1]","color":"#D586D5","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 5"}}]
execute if score $CrusadeMode servermode matches 3.. run tellraw @s ["",{"text":"■ ","bold":true,"color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"This square indicates the \"Vote Priority\" level of the vote options.","color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 5"}},{"text":"5","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 5"}},{"text":") ","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 5"}},{"text":"Crusade Mode","color":"#D586D5","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 5"}},{"text":", ","color":"#954B95","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 5"}},{"selector":"@e[x=0,tag=Maps,tag=ServermodeSet5,limit=1]","color":"#D586D5","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 5"}}]

execute if entity @e[x=0,type=marker,tag=Set6] run tellraw @s ["",{"text":"■ ","bold":true,"color":"blue","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 6"}},{"text":"6","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 6"}},{"text":") ","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 6"}},{"text":"Chase Mode","color":"gold","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 6"}},{"text":", ","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 6"}},{"selector":"@e[x=0,tag=Maps,tag=ServermodeSet6,limit=1]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 6"}}]

execute at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.5

#1/1000 chase mode moment
#TODO

tellraw @s [""]