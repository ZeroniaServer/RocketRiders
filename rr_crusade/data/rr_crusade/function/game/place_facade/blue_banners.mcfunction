$execute unless predicate game:arena_details/castle run setblock -89 202 65 $(base_color)_banner[rotation=6]{patterns:$(patterns)}
$execute unless predicate game:arena_details/castle run setblock -101 202 65 $(base_color)_banner[rotation=10]{patterns:$(patterns)}
$execute if predicate game:arena_details/castle run setblock -89 203 65 $(base_color)_banner[rotation=6]{patterns:$(patterns)}
$execute if predicate game:arena_details/castle run setblock -101 203 65 $(base_color)_banner[rotation=10]{patterns:$(patterns)}

$setblock -98 199 66 $(base_color)_wall_banner[facing=south]{patterns:$(patterns)}
$setblock -92 199 66 $(base_color)_wall_banner[facing=south]{patterns:$(patterns)}
