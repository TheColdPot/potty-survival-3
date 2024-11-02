execute if data storage potty.items:database {query:"respite"} run data modify storage potty.items:database output set value {icon: "☽", short_description: '{"translate":"","fallback":"Regenerate health out of combat."}', name: '{"translate": "", "fallback": "Lunar Respite","color": "#7986cb"}'}

execute if data storage potty.items:database {query:"vampire"} run data modify storage potty.items:database output set value {icon: "❤", short_description: '{"translate":"","fallback":"Drain emeies\' health on hit."}', name: '{"translate": "", "fallback": "Vampiric Core","color": "#f06292"}'}

execute if data storage potty.items:database {query: "lunar_trial"} run data modify storage potty.items:database output set value { \
  icon: "☽", \
  short_description: '{"translate":"","fallback":"Chance to strike enemies on hit."}', \
  name: '{"translate": "", "fallback": "Lunar Trial","color": "#f06292"}', \
  attachable_name: "Waning Moondust", \
  inscription: {\
    length: 2, \
    lines: ['{"translate":"","fallback":"By nature seems not a natural creation..."}'], \
  }, \
}
