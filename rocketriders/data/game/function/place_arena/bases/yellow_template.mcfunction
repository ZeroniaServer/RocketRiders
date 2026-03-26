# arguments: front, middle, back

$fill -14 34 62 38 63 66 $(back) strict
$fill -14 34 57 38 63 61 $(middle) strict
$execute unless predicate game:match_components/checkered_yellow_base run fill -14 34 52 38 63 56 $(front) strict
