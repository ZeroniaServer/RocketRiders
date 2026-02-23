function game:joinwarn
execute unless entity @s[tag=!JoinBlue,tag=!JoinYellow,tag=!JoinSpec] run return 0
execute unless entity @s[tag=!tryJoinBlue,tag=!tryJoinYellow,tag=!tryJoinSpec] run return 0

title @s times 5 30 5
title @s title {storage:"rocketriders:joinwarn",nbt:"title",interpret:true}
title @s subtitle {storage:"rocketriders:joinwarn",nbt:"subtitle",interpret:true}
