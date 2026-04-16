$execute unless predicate game:arena_details/top/castle run setblock -101 202 91 $(base_color)_banner[rotation=14]{patterns:$(patterns)}
$execute unless predicate game:arena_details/top/castle run setblock -89 202 91 $(base_color)_banner[rotation=2]{patterns:$(patterns)}
$execute if predicate game:arena_details/top/castle run setblock -101 203 91 $(base_color)_banner[rotation=14]{patterns:$(patterns)}
$execute if predicate game:arena_details/top/castle run setblock -89 203 91 $(base_color)_banner[rotation=2]{patterns:$(patterns)}

$setblock -92 199 90 $(base_color)_wall_banner[facing=south]{patterns:$(patterns)}
$setblock -98 199 90 $(base_color)_wall_banner[facing=south]{patterns:$(patterns)}
