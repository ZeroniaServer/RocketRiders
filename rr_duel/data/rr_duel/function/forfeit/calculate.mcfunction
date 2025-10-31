scoreboard players reset @a[x=0,predicate=custom:team/blue] ForfeitWin
scoreboard players reset @a[x=0,predicate=custom:team/yellow] ForfeitWin
scoreboard players reset @a[x=0,predicate=custom:team/blue] ForfeitLoss
scoreboard players reset @a[x=0,predicate=custom:team/yellow] ForfeitLoss
scoreboard players reset $BlueWin Forfeit
scoreboard players reset $BlueLoss Forfeit
scoreboard players reset $YellowWin Forfeit
scoreboard players reset $YellowLoss Forfeit

function rr_duel:forfeit/calcblue
function rr_duel:forfeit/quickstore_b

function rr_duel:forfeit/calcyellow
function rr_duel:forfeit/quickstore_y

scoreboard players operation @a[x=0,predicate=custom:team/yellow] ForfeitLoss = $YellowLoss Forfeit
scoreboard players operation @a[x=0,predicate=custom:team/blue] ForfeitLoss = $BlueLoss Forfeit
scoreboard players operation @a[x=0,predicate=custom:team/yellow] ForfeitWin = $YellowWin Forfeit
scoreboard players operation @a[x=0,predicate=custom:team/blue] ForfeitWin = $BlueWin Forfeit

scoreboard players reset $YellowLoss Forfeit
scoreboard players reset $YellowWin Forfeit
scoreboard players reset $BlueLoss Forfeit
scoreboard players reset $BlueWin Forfeit