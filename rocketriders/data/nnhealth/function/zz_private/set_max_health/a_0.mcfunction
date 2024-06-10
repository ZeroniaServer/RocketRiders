##by NOPEname

execute if score @s nnhealth_max matches 0..63 run function nnhealth:zz_private/set_max_health/b_0
execute if score @s nnhealth_max matches 64..127 run function nnhealth:zz_private/set_max_health/b_64
execute if score @s nnhealth_max matches 128..191 run function nnhealth:zz_private/set_max_health/b_128
execute if score @s nnhealth_max matches 192..255 run function nnhealth:zz_private/set_max_health/b_192
