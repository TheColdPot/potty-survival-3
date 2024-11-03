execute if data storage potty.items:database {query:"respite"} run data modify storage potty.items:database output set value {icon: "☽", short_description: '{"translate":"","fallback":"Regenerate health out of combat."}', name: '{"translate": "", "fallback": "Lunar Respite","color": "#7986cb"}'}

execute if data storage potty.items:database {query:"vampire"} run data modify storage potty.items:database output set value {icon: "❤", short_description: '{"translate":"","fallback":"Drain emeies\' health on hit."}', name: '{"translate": "", "fallback": "Vampiric Core","color": "#f06292"}'}

execute if data storage potty.items:database {query: "lunar_trial"} run data modify storage potty.items:database output set value { \
  icon: "☽", \
  short_description: '{"translate":"","fallback":"Chance to strike enemies on hit."}', \
  name: '{"translate": "", "fallback": "Lunar Trial","color": "#f06292"}', \
  attachable_name: '{"translate":"","fallback":"Waning Moondust"}', \
  inscription: {\
    length: 2, \
    lines: ['{"translate":"","fallback":"Too delicate to be a natural creation."}','{"translate":"","fallback":"More likely to be from a divine hand."}'], \
  }, \
}
