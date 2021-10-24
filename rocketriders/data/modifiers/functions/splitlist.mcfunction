#Splits entire list of Modifiers into individual lines based on line length

#General variables
execute store result score $modifiersLeft CmdData run data get storage rocketriders:modifiers list
execute if score $modifiersLeft CmdData matches 1.. run scoreboard players set $maxLineLength CmdData 47

#Adds the next modifier in the list to the most recently created line
execute if score $modifiersLeft CmdData matches 1.. run data modify storage rocketriders:modifiers line[-1] append from storage rocketriders:modifiers list[0]
execute if score $modifiersLeft CmdData matches 1.. run data remove storage rocketriders:modifiers list[0]
execute store result score $modifiersLeft CmdData run data get storage rocketriders:modifiers list

#Tracks line length and creates a new list for the next line if it exceeds this value
execute if score $modifiersLeft CmdData matches 1.. store result score $tempLineLength CmdData run data get storage rocketriders:modifiers length[0]
execute if score $modifiersLeft CmdData matches 1.. run data remove storage rocketriders:modifiers length[0]
execute if score $modifiersLeft CmdData matches 1.. run scoreboard players operation $thisLineLength CmdData += $tempLineLength CmdData
execute if score $modifiersLeft CmdData matches 1.. run scoreboard players add $thisLineLength CmdData 2
execute if score $modifiersLeft CmdData matches 1.. if score $thisLineLength CmdData > $maxLineLength CmdData run data modify storage rocketriders:modifiers line append value []
execute if score $modifiersLeft CmdData matches 1.. if score $thisLineLength CmdData > $maxLineLength CmdData run scoreboard players set $thisLineLength CmdData 0

#Recursion condition
execute if score $modifiersLeft CmdData matches 1.. run function modifiers:splitlist

#Resets
execute unless score $modifiersLeft CmdData matches 1.. run data remove storage rocketriders:modifiers list
execute unless score $modifiersLeft CmdData matches 1.. run data remove storage rocketriders:modifiers length
execute unless score $modifiersLeft CmdData matches 1.. run scoreboard players reset $modifiers CmdData
execute unless score $modifiersLeft CmdData matches 1.. run scoreboard players reset $maxLineLength CmdData
execute unless score $modifiersLeft CmdData matches 1.. run scoreboard players reset $tempLineLength CmdData
execute unless score $modifiersLeft CmdData matches 1.. run scoreboard players reset $thisLineLength CmdData
execute unless score $modifiersLeft CmdData matches 1.. run scoreboard players reset $modifiersLeft CmdData