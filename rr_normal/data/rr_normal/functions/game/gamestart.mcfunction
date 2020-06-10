#Items
function game:gearblue
function game:saberblue

function game:gearyellow
function game:saberyellow

#Tag Removal
tag @a remove JoinBlue
tag @a remove JoinYellow

#Start Game
execute as @s[scores={count=600},tag=!GameEnd] run tag @s add GameStarted