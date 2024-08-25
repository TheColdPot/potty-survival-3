# Combat system
## Stats
The stat system is highly similar to Hypixel SkyBlock. This is because of our first purpose (of course it was changed.)

Your final damage (or *uncrit* damage) is calculated by:
$$
\text{Uncrit} = (\text{Base})\left(1+\frac{\text{Strength}}{100}\right)\ \cdot \text{Post Modifiers}
$$

And your crit damage:
$$
\text{Crit} = \text{Uncrit} \cdot \left(1+\frac{\text{Crit Damage}}{100}\right)
$$

When your received an amount of damage, it is reduced by your defense, given by:
$$
\text{Final Damage}=\frac{100}{\text{Defense} + 100} \cdot \text{Incoming Damage}
$$
The mechanism also applies on mobs, but damage caused by mobs is gauranteed not to be critical.

## Combo, Class & Faction