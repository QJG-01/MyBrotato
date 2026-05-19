# MyBrotato

`MyBrotato` 是一个基于 Godot 4.7 开发的俯视角竞技场生存游戏原型，玩法灵感来自 Brotato。当前项目已经具备可游玩的核心战斗循环，包含多种敌人类型、逐步扩展的道具池，以及升级/商店式成长系统。

## 当前功能

- 可操作角色，包含移动、冲刺、生命值和武器槽系统
- 多种近战与远程武器，支持共享武器行为与独立武器数值
- 多类敌人原型，包括追击型、冲锋型和射击型敌人
- 投射物、碰撞、Hitbox、Hurtbox、击退与伤害数字系统
- 金币掉落与金币背包界面
- 升级、道具选择、商店和属性展示面板
- 第 1 波到第 20 波的波次配置资源
- 出生特效、飘字、着色器，以及声音管理自动加载支持

## 操作方式

- `WASD`：移动
- `Space`：冲刺

## 项目结构

- [project.godot](./project.godot)：Godot 项目入口配置
- [scenes/arena](./scenes/arena)：主战斗场景、相机与刷怪逻辑
- [scenes/unit](./scenes/unit)：玩家与敌人单位
- [scenes/weapons](./scenes/weapons)：武器场景与行为脚本
- [scenes/ui](./scenes/ui)：HUD、商店、升级与卡牌界面
- [resources/items](./resources/items)：武器、被动与升级资源数据
- [resources/waves](./resources/waves)：波次配置资源
- [autoloads](./autoloads)：全局单例脚本，例如共享游戏状态与音频管理
