# Valid range is 1..6
execute unless score @s VoteServerMode matches 1..6 run return run tellraw @s {color:"red",text:"Invalid vote! Please try again."}
# Chase mode option is conditional
execute if score @s VoteServerMode matches 6 unless entity @e[x=0,tag=ServerMode,tag=ChaseMode] run return run tellraw @s {color:"red",text:"Invalid vote! Please try again."}

# Suitable error message for duplicate votes
execute if score @s VoteNum = @s VoteServerMode run function servermode:voting/get_voted_option_name
execute if score @s VoteNum = @s VoteServerMode run return run tellraw @s [{color:"dark_aqua",text:"You have already voted for "},{bold:true,color:"gold",storage:"rocketriders:main",nbt:"voting.voted_option_name",interpret:true},".\n"]

# Cast vote
scoreboard players operation @s VoteNum = @s VoteServerMode
function servermode:voting/get_voted_option_name
tellraw @s [{color:"dark_aqua",text:"You have voted for "},{bold:true,color:"gold",storage:"rocketriders:main",nbt:"voting.voted_option_name",interpret:true},"! You may change your vote if you wish, or wait for the voting period to end.\n"]
execute at @s run playsound minecraft:ui.cartography_table.take_result master @s ~ ~ ~ 0.4 1.5
