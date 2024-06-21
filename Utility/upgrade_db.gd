extends Node

const ICON_PATH = "res://Textures/Items/Upgrades/"
const WEAPON_PATH = "res://Textures/Items/Weapons/"
const UPGRADES = {
	"icespear1": {
		"icon": WEAPON_PATH + "ice_spear.png",
		"displayname": "冰矛",
		"details": "向随机敌人投掷一支冰矛",
		"level": "等级: 1",
		"prerequisite": [],
		"type": "weapon"
	},
	"icespear2": {
		"icon": WEAPON_PATH + "ice_spear.png",
		"displayname": "冰矛",
		"details": "额外投掷一支冰矛",
		"level": "等级: 2",
		"prerequisite": ["icespear1"],
		"type": "weapon"
	},
	"icespear3": {
		"icon": WEAPON_PATH + "ice_spear.png",
		"displayname": "冰矛",
		"details": "冰矛现在可以穿透另一个敌人，并造成+3点伤害",
		"level": "等级: 3",
		"prerequisite": ["icespear2"],
		"type": "weapon"
	},
	"icespear4": {
		"icon": WEAPON_PATH + "ice_spear.png",
		"displayname": "冰矛",
		"details": "额外投掷两支冰矛",
		"level": "等级: 4",
		"prerequisite": ["icespear3"],
		"type": "weapon"
	},
	"javelin1": {
		"icon": WEAPON_PATH + "javelin_3_new_attack.png",
		"displayname": "标枪",
		"details": "一支魔法标枪将跟随你直线攻击敌人",
		"level": "等级: 1",
		"prerequisite": [],
		"type": "weapon"
	},
	"javelin2": {
		"icon": WEAPON_PATH + "javelin_3_new_attack.png",
		"displayname": "标枪",
		"details": "标枪现在每次攻击额外攻击一个敌人",
		"level": "等级: 2",
		"prerequisite": ["javelin1"],
		"type": "weapon"
	},
	"javelin3": {
		"icon": WEAPON_PATH + "javelin_3_new_attack.png",
		"displayname": "标枪",
		"details": "标枪每次攻击再额外攻击一个敌人",
		"level": "等级: 3",
		"prerequisite": ["javelin2"],
		"type": "weapon"
	},
	"javelin4": {
		"icon": WEAPON_PATH + "javelin_3_new_attack.png",
		"displayname": "标枪",
		"details": "标枪现在每次攻击造成+5点伤害，并增加20%的击退效果",
		"level": "等级: 4",
		"prerequisite": ["javelin3"],
		"type": "weapon"
	},
	"tornado1": {
		"icon": WEAPON_PATH + "tornado.png",
		"displayname": "龙卷风",
		"details": "在玩家方向随机生成一个龙卷风",
		"level": "等级: 1",
		"prerequisite": [],
		"type": "weapon"
	},
	"tornado2": {
		"icon": WEAPON_PATH + "tornado.png",
		"displayname": "龙卷风",
		"details": "额外生成一个龙卷风",
		"level": "等级: 2",
		"prerequisite": ["tornado1"],
		"type": "weapon"
	},
	"tornado3": {
		"icon": WEAPON_PATH + "tornado.png",
		"displayname": "龙卷风",
		"details": "龙卷风冷却时间减少0.5秒",
		"level": "等级: 3",
		"prerequisite": ["tornado2"],
		"type": "weapon"
	},
	"tornado4": {
		"icon": WEAPON_PATH + "tornado.png",
		"displayname": "龙卷风",
		"details": "额外生成一个龙卷风，并增加25%的击退效果",
		"level": "等级: 4",
		"prerequisite": ["tornado3"],
		"type": "weapon"
	},
	"armor1": {
		"icon": ICON_PATH + "helmet_1.png",
		"displayname": "护甲",
		"details": "减少1点伤害",
		"level": "等级: 1",
		"prerequisite": [],
		"type": "upgrade"
	},
	"armor2": {
		"icon": ICON_PATH + "helmet_1.png",
		"displayname": "护甲",
		"details": "额外减少1点伤害",
		"level": "等级: 2",
		"prerequisite": ["armor1"],
		"type": "upgrade"
	},
	"armor3": {
		"icon": ICON_PATH + "helmet_1.png",
		"displayname": "护甲",
		"details": "额外减少1点伤害",
		"level": "等级: 3",
		"prerequisite": ["armor2"],
		"type": "upgrade"
	},
	"armor4": {
		"icon": ICON_PATH + "helmet_1.png",
		"displayname": "护甲",
		"details": "额外减少1点伤害",
		"level": "等级: 4",
		"prerequisite": ["armor3"],
		"type": "upgrade"
	},
	"speed1": {
		"icon": ICON_PATH + "boots_4_green.png",
		"displayname": "速度",
		"details": "移动速度增加基础速度的50%",
		"level": "等级: 1",
		"prerequisite": [],
		"type": "upgrade"
	},
	"speed2": {
		"icon": ICON_PATH + "boots_4_green.png",
		"displayname": "速度",
		"details": "移动速度额外增加基础速度的50%",
		"level": "等级: 2",
		"prerequisite": ["speed1"],
		"type": "upgrade"
	},
	"speed3": {
		"icon": ICON_PATH + "boots_4_green.png",
		"displayname": "速度",
		"details": "移动速度额外增加基础速度的50%",
		"level": "等级: 3",
		"prerequisite": ["speed2"],
		"type": "upgrade"
	},
	"speed4": {
		"icon": ICON_PATH + "boots_4_green.png",
		"displayname": "速度",
		"details": "移动速度额外增加基础速度的50%",
		"level": "等级: 4",
		"prerequisite": ["speed3"],
		"type": "upgrade"
	},
	"tome1": {
		"icon": ICON_PATH + "thick_new.png",
		"displayname": "书卷",
		"details": "增加法术大小10%的基础大小",
		"level": "等级: 1",
		"prerequisite": [],
		"type": "upgrade"
	},
	"tome2": {
		"icon": ICON_PATH + "thick_new.png",
		"displayname": "书卷",
		"details": "增加法术大小10%的基础大小",
		"level": "等级: 2",
		"prerequisite": ["tome1"],
		"type": "upgrade"
	},
	"tome3": {
		"icon": ICON_PATH + "thick_new.png",
		"displayname": "书卷",
		"details": "增加法术大小10%的基础大小",
		"level": "等级: 3",
		"prerequisite": ["tome2"],
		"type": "upgrade"
	},
	"tome4": {
		"icon": ICON_PATH + "thick_new.png",
		"displayname": "书卷",
		"details": "增加法术大小10%的基础大小",
		"level": "等级: 4",
		"prerequisite": ["tome3"],
		"type": "upgrade"
	},
	"scroll1": {
		"icon": ICON_PATH + "scroll_old.png",
		"displayname": "卷轴",
		"details": "减少法术冷却时间5%的基础时间",
		"level": "等级: 1",
		"prerequisite": [],
		"type": "upgrade"
	},
	"scroll2": {
		"icon": ICON_PATH + "scroll_old.png",
		"displayname": "卷轴",
		"details": "减少法术冷却时间5%的基础时间",
		"level": "等级: 2",
		"prerequisite": ["scroll1"],
		"type": "upgrade"
	},
	"scroll3": {
		"icon": ICON_PATH + "scroll_old.png",
		"displayname": "卷轴",
		"details": "减少法术冷却时间5%的基础时间",
		"level": "等级: 3",
		"prerequisite": ["scroll2"],
		"type": "upgrade"
	},
	"scroll4": {
		"icon": ICON_PATH + "scroll_old.png",
		"displayname": "卷轴",
		"details": "减少法术冷却时间5%的基础时间",
		"level": "等级: 4",
		"prerequisite": ["scroll3"],
		"type": "upgrade"
	},
	"ring1": {
		"icon": ICON_PATH + "urand_mage.png",
		"displayname": "戒指",
		"details": "你的法术现在会多生成一次额外攻击",
		"level": "等级: 1",
		"prerequisite": [],
		"type": "upgrade"
	},
	"ring2": {
		"icon": ICON_PATH + "urand_mage.png",
		"displayname": "戒指",
		"details": "你的法术现在会多生成一次额外攻击",
		"level": "等级: 2",
		"prerequisite": ["ring1"],
		"type": "upgrade"
	},
	"food": {
		"icon": ICON_PATH + "chunk.png",
		"displayname": "食物",
		"details": "为你回复20点生命值",
		"level": "N/A",
		"prerequisite": [],
		"type": "item"
	}
}
