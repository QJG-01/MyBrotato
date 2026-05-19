# MyBrotato

`MyBrotato` is a Godot 4.7 top-down arena survival prototype inspired by Brotato. The current project already includes a playable combat loop, multiple enemy archetypes, a growing item pool, and upgrade/shop style progression systems.

## Current Features

- Playable character scenes with movement, dash, health, and weapon slots
- Multiple melee and ranged weapons with shared weapon behaviors and per-weapon stats
- Enemy variants including chasers, chargers, and shooters
- Projectile, collision, hitbox, hurtbox, knockback, and damage text systems
- Coin drops and coin bag UI
- Upgrade, item selection, shop, and stat display panels
- Wave data resources covering waves 1 through 20
- Spawn effects, floating text, shaders, and sound manager autoload support

## Controls

- `WASD`: Move
- `Space`: Dash

## Project Structure

- [project.godot](./project.godot): Godot project entry
- [scenes/arena](./scenes/arena): Main arena scene, camera, and spawning logic
- [scenes/unit](./scenes/unit): Player and enemy units
- [scenes/weapons](./scenes/weapons): Weapon scenes and behaviors
- [scenes/ui](./scenes/ui): HUD, shop, upgrade, and card UI
- [resources/items](./resources/items): Weapon, passive, and upgrade resource data
- [resources/waves](./resources/waves): Wave configuration resources
- [autoloads](./autoloads): Global singleton scripts such as shared game state and audio

## Current State

This repository represents an actively evolving gameplay prototype. Some systems are already playable end to end, while others are still being iterated on and cleaned up.
