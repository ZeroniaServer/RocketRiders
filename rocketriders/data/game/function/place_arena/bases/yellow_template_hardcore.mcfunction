# arguments: front, middle, back

$fill -14 34 66 38 63 66 $(back) strict
$fill -14 34 65 38 63 65 $(middle) strict
$execute unless predicate game:match_components/checkered_yellow_base run fill -14 34 64 38 63 64 $(front) strict

$execute if predicate game:match_components/has_flags run fill -12 63 63 -8 63 65 $(back) strict
$execute if predicate game:match_components/has_flags run fill -11 63 62 -9 63 62 $(back) strict
$execute if predicate game:match_components/has_flags run fill 32 63 63 36 63 65 $(back) strict
$execute if predicate game:match_components/has_flags run fill 33 63 62 35 63 62 $(back) strict
