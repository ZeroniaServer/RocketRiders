scoreboard players reset @a[predicate=custom:indimension,team=Blue] ForfeitWin
scoreboard players reset @a[predicate=custom:indimension,team=Yellow] ForfeitWin
scoreboard players reset @a[predicate=custom:indimension,team=Blue] ForfeitLoss
scoreboard players reset @a[predicate=custom:indimension,team=Yellow] ForfeitLoss
scoreboard players reset $BlueWin Forfeit
scoreboard players reset $BlueLoss Forfeit
scoreboard players reset $YellowWin Forfeit
scoreboard players reset $YellowLoss Forfeit

function rr_duel:forfeit/calcblue
function rr_duel:forfeit/quickstore_b

function rr_duel:forfeit/calcyellow
function rr_duel:forfeit/quickstore_y

scoreboard players operation @a[predicate=custom:indimension,team=Yellow] ForfeitLoss = $YellowLoss Forfeit
scoreboard players operation @a[predicate=custom:indimension,team=Blue] ForfeitLoss = $BlueLoss Forfeit
scoreboard players operation @a[predicate=custom:indimension,team=Yellow] ForfeitWin = $YellowWin Forfeit
scoreboard players operation @a[predicate=custom:indimension,team=Blue] ForfeitWin = $BlueWin Forfeit

scoreboard players reset $YellowLoss Forfeit
scoreboard players reset $YellowWin Forfeit
scoreboard players reset $BlueLoss Forfeit
scoreboard players reset $BlueWin Forfeit