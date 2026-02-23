function game:joinwarn
execute unless entity @s[tag=!JoinBlue,tag=!JoinYellow,tag=!JoinSpec] run return 0
execute unless entity @s[tag=!tryJoinBlue,tag=!tryJoinYellow,tag=!tryJoinSpec] run return 0

tellraw @s ["",{color:"dark_gray",text:"["},{bold:true,color:"red",text:"!"},{color:"dark_gray",text:"] "},{storage:"rocketriders:joinwarn",nbt:"title",interpret:true}]
execute unless data storage rocketriders:joinwarn {subtitle:""} run tellraw @s {storage:"rocketriders:joinwarn",nbt:"subtitle",interpret:true}
