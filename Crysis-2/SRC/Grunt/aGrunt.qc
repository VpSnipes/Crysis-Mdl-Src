$origin 0 0 0 180
$modelname "crysis2\Grunt.mdl"
$model "Grunt"	"Grunt-Ref"
$model "Grunt"	"Grunt-Jelly"
$model "Grunt"	"Grunt-Guts"
$model "Grunt"	"Grunt-SSS"
$model "Grunt"	"Grunt-Refract"
$poseparameter "head_pitch" -90 90
$poseparameter "head_yaw" -90 90
$poseparameter "head_roll" 0 0
$attachment "HandPos" "LArm_IK_Target" 0 0 0 rotate 0 0 0
$attachment "eyes" "Head" 0 0 0
$attachment "forward" "Grunt_Root" 0.00 0.00 0.00 rotate 0 0 -90

$bodygroup "Helmet"
{
	studio "Grunt-Helmet.smd"
	studio "Grunt-Helmet-Leader.smd"
	blank
}
$bodygroup "RightChest"
{
	studio "Grunt-Armor-Right.smd"
	blank
}
$bodygroup "LeftChest"
{
	studio "Grunt-Armor-Left.smd"
	blank
}

$surfaceprop "metal"
$contents "solid"
$illumposition -0.77 5.848 47.836
$cdmaterials "models\crysis2\agrunt\"
$cdmaterials "models\crysis2\shared\"
$mostlyopaque

$texturegroup "skinfamilies"
{
    { "weapon" 			"plate_low" 		"plate_up" 			"metal" 		"metal_share" 			"metal_share_noshadow" 			"jelly" 		"jelly_guts" 		"jelly_sss" }
    { "elite_weapon" 	"elite_plate_low" 	"elite_plate_up" 	"elite_metal" 	"elite_metal_share" 	"elite_metal_share_noshadow" 	"elite_jelly" 	"elite_jelly_guts" 	"elite_jelly_sss" }
}

$weightlist worldblend_params {
	"Spine01"              0
	"Spine02"              0.2
	"Spine03"              0.4
	"Spine04"              0.6
	"jellyBone"            0
	"jelly_back_proxy"     0
	"L_Clavicle"           0.8
	"L_Arm01"			   1
	"L_Hand"			   0
	"Neck_01"              0
	"Head"                 0
	"R_Clavicle"           0.8
	"R_Arm01"       	   1
}

$weightlist aim_parameters {
	"Spine01"              1
	"jellyBone"            0
	"jelly_back_proxy"     0
}

$weightlist all {
	"Grunt_Root"           1
}
$ikchain l_foot "l_foot" Z 0 knee 0.707 -0.707 0 pad 5 center 4 0 0
$ikchain r_foot "r_foot" Z 0 knee 0.707 -0.707 0 pad 5 center 4 0 0
$ikchain lhand "L_Hand" Z 0 knee 0.707 0.707 0
$cmdlist lockfeet {
	ikrule l_foot footstep height 20 floor 0
	ikrule r_foot footstep height 20 floor 0
	ikrule lhand touch "LArm_IK_Target" usesource
}

$Animation "aimidle_lo_com_ref" 		"anims/aimparams/aim_pose_lo_idle.smd"	frame 2 2	weightlist aim_parameters
$Animation "aimidle_lo_com" 			"anims/aimparams/aim_pose_lo_idle.smd" 	frame 2 2	subtract	"aimidle_lo_com_ref" 0	weightlist aim_parameters
$Animation "aimidle_lo_down_com" 		"anims/aimparams/aim_pose_lo_idle.smd" 	frame 7 7	subtract	"aimidle_lo_com_ref" 0	weightlist aim_parameters
$Animation "aimidle_lo_down_left_com" 	"anims/aimparams/aim_pose_lo_idle.smd" 	frame 5 5	subtract	"aimidle_lo_com_ref" 0	weightlist aim_parameters
$Animation "aimidle_lo_down_right_com" 	"anims/aimparams/aim_pose_lo_idle.smd" 	frame 9 9	subtract	"aimidle_lo_com_ref" 0	weightlist aim_parameters
$Animation "aimidle_lo_left_com" 		"anims/aimparams/aim_pose_lo_idle.smd" 	frame 0 0	subtract	"aimidle_lo_com_ref" 0	weightlist aim_parameters
$Animation "aimidle_lo_right_com" 		"anims/aimparams/aim_pose_lo_idle.smd" 	frame 4 4	subtract	"aimidle_lo_com_ref" 0	weightlist aim_parameters
$Animation "aimidle_lo_up_com" 			"anims/aimparams/aim_pose_lo_idle.smd" 	frame 12 12	subtract	"aimidle_lo_com_ref" 0	weightlist aim_parameters
$Animation "aimidle_lo_up_left_com" 	"anims/aimparams/aim_pose_lo_idle.smd" 	frame 10 10	subtract	"aimidle_lo_com_ref" 0	weightlist aim_parameters
$Animation "aimidle_lo_up_right_com" 	"anims/aimparams/aim_pose_lo_idle.smd" 	frame 14 14	subtract	"aimidle_lo_com_ref" 0	weightlist aim_parameters

$Animation "aimrun_lo_com_ref" 			"anims/aimparams/aim_pose_lo_run.smd"	frame 2 2	weightlist aim_parameters
$Animation "aimrun_lo_com" 				"anims/aimparams/aim_pose_lo_run.smd" 	frame 2 2	subtract "aimrun_lo_com_ref" 0	weightlist aim_parameters
$Animation "aimrun_lo_down_com" 		"anims/aimparams/aim_pose_lo_run.smd" 	frame 7 7	subtract "aimrun_lo_com_ref" 0	weightlist aim_parameters
$Animation "aimrun_lo_down_left_com" 	"anims/aimparams/aim_pose_lo_run.smd" 	frame 5 5	subtract "aimrun_lo_com_ref" 0	weightlist aim_parameters
$Animation "aimrun_lo_down_right_com" 	"anims/aimparams/aim_pose_lo_run.smd" 	frame 9 9	subtract "aimrun_lo_com_ref" 0	weightlist aim_parameters
$Animation "aimrun_lo_left_com" 		"anims/aimparams/aim_pose_lo_run.smd" 	frame 0 0	subtract "aimrun_lo_com_ref" 0	weightlist aim_parameters
$Animation "aimrun_lo_right_com" 		"anims/aimparams/aim_pose_lo_run.smd" 	frame 4 4	subtract "aimrun_lo_com_ref" 0	weightlist aim_parameters
$Animation "aimrun_lo_up_com" 			"anims/aimparams/aim_pose_lo_run.smd" 	frame 12 12 subtract "aimrun_lo_com_ref" 0	weightlist aim_parameters
$Animation "aimrun_lo_up_left_com" 		"anims/aimparams/aim_pose_lo_run.smd" 	frame 10 10 subtract "aimrun_lo_com_ref" 0	weightlist aim_parameters
$Animation "aimrun_lo_up_right_com" 	"anims/aimparams/aim_pose_lo_run.smd" 	frame 14 14 subtract "aimrun_lo_com_ref" 0	weightlist aim_parameters

$Animation "aimwalk_lo_alr_ref" 		"anims/aimparams/aim_pose_lo_walk.smd"	frame 2 2	weightlist aim_parameters
$Animation "aimwalk_lo_alr" 			"anims/aimparams/aim_pose_lo_walk.smd" 	frame 2 2	subtract	"aimwalk_lo_alr_ref" 0	weightlist aim_parameters
$Animation "aimwalk_lo_down_alr" 		"anims/aimparams/aim_pose_lo_walk.smd" 	frame 7 7	subtract	"aimwalk_lo_alr_ref" 0	weightlist aim_parameters
$Animation "aimwalk_lo_down_left_alr" 	"anims/aimparams/aim_pose_lo_walk.smd" 	frame 5 5	subtract	"aimwalk_lo_alr_ref" 0	weightlist aim_parameters
$Animation "aimwalk_lo_down_right_alr" 	"anims/aimparams/aim_pose_lo_walk.smd" 	frame 9 9	subtract	"aimwalk_lo_alr_ref" 0	weightlist aim_parameters
$Animation "aimwalk_lo_left_alr" 		"anims/aimparams/aim_pose_lo_walk.smd" 	frame 0 0	subtract	"aimwalk_lo_alr_ref" 0	weightlist aim_parameters
$Animation "aimwalk_lo_right_alr" 		"anims/aimparams/aim_pose_lo_walk.smd" 	frame 4 4	subtract	"aimwalk_lo_alr_ref" 0	weightlist aim_parameters
$Animation "aimwalk_lo_up_alr" 			"anims/aimparams/aim_pose_lo_walk.smd" 	frame 12 12	subtract	"aimwalk_lo_alr_ref" 0	weightlist aim_parameters
$Animation "aimwalk_lo_up_left_alr" 	"anims/aimparams/aim_pose_lo_walk.smd" 	frame 10 10	subtract	"aimwalk_lo_alr_ref" 0	weightlist aim_parameters
$Animation "aimwalk_lo_up_right_alr" 	"anims/aimparams/aim_pose_lo_walk.smd" 	frame 14 14	subtract	"aimwalk_lo_alr_ref" 0	weightlist aim_parameters

$Animation "aimidle_hi_com_ref" 		"anims/aimparams/aim_pose_hi_idle.smd"	frame 2 2	weightlist aim_parameters
$Animation "aimidle_hi_com" 			"anims/aimparams/aim_pose_hi_idle.smd" 	frame 2 2	subtract	"aimidle_hi_com_ref" 0	weightlist aim_parameters
$Animation "aimidle_hi_down_com" 		"anims/aimparams/aim_pose_hi_idle.smd" 	frame 7 7	subtract	"aimidle_hi_com_ref" 0	weightlist aim_parameters
$Animation "aimidle_hi_down_left_com" 	"anims/aimparams/aim_pose_hi_idle.smd" 	frame 5 5	subtract	"aimidle_hi_com_ref" 0	weightlist aim_parameters
$Animation "aimidle_hi_down_right_com" 	"anims/aimparams/aim_pose_hi_idle.smd" 	frame 9 9	subtract	"aimidle_hi_com_ref" 0	weightlist aim_parameters
$Animation "aimidle_hi_left_com" 		"anims/aimparams/aim_pose_hi_idle.smd" 	frame 0 0	subtract	"aimidle_hi_com_ref" 0	weightlist aim_parameters
$Animation "aimidle_hi_right_com" 		"anims/aimparams/aim_pose_hi_idle.smd" 	frame 4 4	subtract	"aimidle_hi_com_ref" 0	weightlist aim_parameters
$Animation "aimidle_hi_up_com" 			"anims/aimparams/aim_pose_hi_idle.smd" 	frame 12 12	subtract	"aimidle_hi_com_ref" 0	weightlist aim_parameters
$Animation "aimidle_hi_up_left_com" 	"anims/aimparams/aim_pose_hi_idle.smd" 	frame 10 10	subtract	"aimidle_hi_com_ref" 0	weightlist aim_parameters
$Animation "aimidle_hi_up_right_com" 	"anims/aimparams/aim_pose_hi_idle.smd" 	frame 14 14	subtract	"aimidle_hi_com_ref" 0	weightlist aim_parameters

$Animation "aimrun_hi_com_ref" 			"anims/aimparams/aim_pose_hi_run.smd"	frame 2 2	weightlist aim_parameters
$Animation "aimrun_hi_com" 				"anims/aimparams/aim_pose_hi_run.smd" 	frame 2 2 subtract "aimrun_hi_com_ref" 0	weightlist aim_parameters
$Animation "aimrun_hi_down_com" 		"anims/aimparams/aim_pose_hi_run.smd" 	frame 7 7 subtract "aimrun_hi_com_ref" 0	weightlist aim_parameters
$Animation "aimrun_hi_down_left_com" 	"anims/aimparams/aim_pose_hi_run.smd" 	frame 5 5 subtract "aimrun_hi_com_ref" 0	weightlist aim_parameters
$Animation "aimrun_hi_down_right_com" 	"anims/aimparams/aim_pose_hi_run.smd" 	frame 9 9 subtract "aimrun_hi_com_ref" 0	weightlist aim_parameters
$Animation "aimrun_hi_left_com" 		"anims/aimparams/aim_pose_hi_run.smd" 	frame 0 0 subtract "aimrun_hi_com_ref" 0	weightlist aim_parameters
$Animation "aimrun_hi_right_com" 		"anims/aimparams/aim_pose_hi_run.smd" 	frame 4 4 subtract "aimrun_hi_com_ref" 0	weightlist aim_parameters
$Animation "aimrun_hi_up_com" 			"anims/aimparams/aim_pose_hi_run.smd" 	frame 12 12 subtract "aimrun_hi_com_ref" 0	weightlist aim_parameters
$Animation "aimrun_hi_up_left_com" 		"anims/aimparams/aim_pose_hi_run.smd" 	frame 10 10 subtract "aimrun_hi_com_ref" 0	weightlist aim_parameters
$Animation "aimrun_hi_up_right_com" 	"anims/aimparams/aim_pose_hi_run.smd" 	frame 14 14 subtract "aimrun_hi_com_ref" 0	weightlist aim_parameters

$Animation "aimwalk_hi_alr_ref" 		"anims/aimparams/aim_pose_hi_walk.smd"	frame 2 2	weightlist aim_parameters
$Animation "aimwalk_hi_alr" 			"anims/aimparams/aim_pose_hi_walk.smd" 	frame 2 2	subtract "aimwalk_hi_alr_ref" 0	weightlist aim_parameters
$Animation "aimwalk_hi_down_alr" 		"anims/aimparams/aim_pose_hi_walk.smd" 	frame 7 7	subtract "aimwalk_hi_alr_ref" 0	weightlist aim_parameters
$Animation "aimwalk_hi_down_left_alr" 	"anims/aimparams/aim_pose_hi_walk.smd" 	frame 5 5	subtract "aimwalk_hi_alr_ref" 0	weightlist aim_parameters
$Animation "aimwalk_hi_down_right_alr" 	"anims/aimparams/aim_pose_hi_walk.smd" 	frame 9 9	subtract "aimwalk_hi_alr_ref" 0	weightlist aim_parameters
$Animation "aimwalk_hi_left_alr" 		"anims/aimparams/aim_pose_hi_walk.smd" 	frame 0 0	subtract "aimwalk_hi_alr_ref" 0	weightlist aim_parameters
$Animation "aimwalk_hi_right_alr" 		"anims/aimparams/aim_pose_hi_walk.smd" 	frame 4 4	subtract "aimwalk_hi_alr_ref" 0	weightlist aim_parameters
$Animation "aimwalk_hi_up_alr" 			"anims/aimparams/aim_pose_hi_walk.smd" 	frame 12 12	subtract "aimwalk_hi_alr_ref" 0	weightlist aim_parameters
$Animation "aimwalk_hi_up_left_alr" 	"anims/aimparams/aim_pose_hi_walk.smd" 	frame 10 10	subtract "aimwalk_hi_alr_ref" 0	weightlist aim_parameters
$Animation "aimwalk_hi_up_right_alr" 	"anims/aimparams/aim_pose_hi_walk.smd" 	frame 14 14	subtract "aimwalk_hi_alr_ref" 0	weightlist aim_parameters

$sequence "aimidle_lo_com_params" {
    "aimidle_lo_up_right_com" 		"aimidle_lo_up_com" 	"aimidle_lo_up_left_com"
    "aimidle_lo_right_com" 			"aimidle_lo_com" 		"aimidle_lo_left_com"
    "aimidle_lo_down_right_com" 	"aimidle_lo_down_com" 	"aimidle_lo_down_left_com"
	blendcenter aimidle_lo_com
    blendwidth 3 blend "head_yaw" -90 90 blend "head_pitch" -90 90
	delta
	hidden
}

$sequence "aimrun_lo_com_params" {
    "aimrun_lo_up_right_com" 	"aimrun_lo_up_com" 		"aimrun_lo_up_left_com"
    "aimrun_lo_right_com" 		"aimrun_lo_com" 		"aimrun_lo_left_com"
    "aimrun_lo_down_right_com" 	"aimrun_lo_down_com" 	"aimrun_lo_down_left_com"
	blendcenter aimrun_lo_com
    blendwidth 3 blend "head_yaw" -90 90 blend "head_pitch" -90 90
	delta
	hidden
}

$sequence "aimwalk_lo_alr_params" {
    "aimwalk_lo_up_right_alr" 	"aimwalk_lo_up_alr"		"aimwalk_lo_up_left_alr"
    "aimwalk_lo_right_alr" 		"aimwalk_lo_alr" 		"aimwalk_lo_left_alr"
    "aimwalk_lo_down_right_alr"	"aimwalk_lo_down_alr" 	"aimwalk_lo_down_left_alr"
	blendcenter aimwalk_lo_alr
    blendwidth 3 blend "head_yaw" -90 90 blend "head_pitch" -90 90
	delta
	hidden
}

$sequence "aimidle_hi_com_params" {
    "aimidle_hi_up_right_com" 		"aimidle_hi_up_com" 	"aimidle_hi_up_left_com"
    "aimidle_hi_right_com" 			"aimidle_hi_com" 		"aimidle_hi_left_com"
    "aimidle_hi_down_right_com" 	"aimidle_hi_down_com" 	"aimidle_hi_down_left_com"
	blendcenter aimidle_hi_com
    blendwidth 3 blend "head_yaw" -90 90 blend "head_pitch" -90 90
	delta
	hidden
}

$sequence "aimrun_hi_com_params" {
    "aimrun_hi_up_right_com" 	"aimrun_hi_up_com" 		"aimrun_hi_up_left_com"
    "aimrun_hi_right_com" 		"aimrun_hi_com" 		"aimrun_hi_left_com"
    "aimrun_hi_down_right_com" 	"aimrun_hi_down_com" 	"aimrun_hi_down_left_com"
	blendcenter aimrun_hi_com
    blendwidth 3 blend "head_yaw" -90 90 blend "head_pitch" -90 90
	delta
	hidden
}

$sequence "aimwalk_hi_alr_params" {
    "aimwalk_hi_up_right_alr"	"aimwalk_hi_up_alr"		"aimwalk_hi_up_left_alr"
    "aimwalk_hi_right_alr"		"aimwalk_hi_alr" 		"aimwalk_hi_left_alr"
    "aimwalk_hi_down_right_alr"	"aimwalk_hi_down_alr" 	"aimwalk_hi_down_left_alr"
	blendcenter aimwalk_hi_alr
    blendwidth 3 blend "head_yaw" -90 90 blend "head_pitch" -90 90
	delta
	hidden
}

$Animation "aim-neutral" 		"anims/aimparams/aim_pose_lo_idle.smd"	frame 2 2 cmdlist lockfeet
$Animation "aim-up" 			"anims/aimparams/ADS_AimUp.smd"		frame 0 0 subtract "aim-neutral" 0 cmdlist lockfeet
$Animation "aim-down" 			"anims/aimparams/aim_pose_lo_idle.smd"	frame 2 2 subtract "aim-neutral" 0 cmdlist lockfeet
$Sequence "aim_com" {
	"aim-down"
	"aim-up"
	blendwidth 2 blend "ads" 0 1
	delta
	autoplay
	hidden
	weightlist "aim_parameters"
}

$Sequence "Combat-Idle-Ads" { "anims/Combat-Idle-Ads.smd"
	activity "ACT_IDLE_COMBAT" 1
	loop
	addlayer "aimidle_hi_com_params"
	cmdlist lockfeet
}

$Animation "aim_ref" 			"anims/aimparams/ADS_AimUp.smd"		frame 0 0
$Animation "aim_ref_run" 		"anims/aimparams/aim_pose_hi_run.smd"	frame 2 2
$Sequence "Combat-Idle" { "anims/Combat-Idle.smd"
	activity "ACT_IDLE_COMBAT" 1
	loop
	addlayer "aimidle_hi_com_params"
	//weightlist "worldblend_params"
	//worldspaceblend "aim_ref"
	//weightlist "all"
	cmdlist lockfeet
}

$Sequence "Combat-Taunt" { "anims/Combat-Taunt.smd"
	activity "ACT_TAUNT" 1
}

$Sequence "Combat-Taunt-Leader" { "anims/Combat-Taunt-Leader.smd"
	activity "ACT_TAUNT_LEADER" 1
}

$Sequence "Combat-Ping" { "anims/Combat-Ping.smd"
	activity "ACT_PING" 1
}

$Sequence "Combat-Retreat" { "anims/Combat-Retreat.smd"
	activity "ACT_RETREAT" 1
}

$Sequence "Combat-Melee-Gun" { "anims/Combat-Melee-Gun.smd"
	activity "ACT_MELEE_ATTACK1" 1
	walkframe 5  LX LY
	walkframe 10 LX LY
	walkframe 15 LX LY
	walkframe 20 LX LY
	walkframe 25 LX LY
	walkframe 30 LX LY
	walkframe 35 LX LY
	walkframe 40 LX LY
	walkframe 45 LX LY
	walkframe 50 LX LY
}

$Sequence "Combat-Attack-01" { "anims/Combat-Attack-01.smd"
	activity "ACT_MELEE_ATTACK2" 1
}

$Animation "Run_Front" 			"anims/Combat-Run-Aim-Front.smd" 	fudgeloop LX LY	 rotateto 0	
$Animation "Run_Front-left" 	"anims/Combat-Run-Aim-Front.smd" 	fudgeloop LX LY	 rotateto 45	
$Animation "Run_Front-right" 	"anims/Combat-Run-Aim-Front.smd" 	fudgeloop LX LY	 rotateto -45	
$Animation "Run_Back" 			"anims/Combat-Run-Aim-Back.smd" 	fudgeloop LX LY	 rotateto -180
$Animation "Run_Back-left" 		"anims/Combat-Run-Aim-Back.smd" 	fudgeloop LX LY	 rotateto 135	
$Animation "Run_Back-right" 	"anims/Combat-Run-Aim-Back.smd" 	fudgeloop LX LY	 rotateto -135
$Animation "Run_Right" 			"anims/Combat-Run-Aim-Right.smd" 	fudgeloop LX LY	 rotateto -90 
$Animation "Run_Left" 			"anims/Combat-Run-Aim-Left.smd" 	fudgeloop LX LY	 rotateto 90 	

$sequence "Run_Combat" {
	"Run_Back"
    "Run_Back-right"
	"Run_Right"
	"Run_Front-right"
	"Run_Front"
	"Run_Front-left"
	"Run_Left"
	"Run_Back-left"
	"Run_Back"
	//--Sound
    blendwidth 9 blend move_yaw -180 180
	activity "ACT_RUN" 1
	addlayer "aimrun_hi_com_params"
}

$Animation "rRun_Front" 		"anims/Combat-Run-Front.smd" 	fudgeloop LX LY		rotateto 0			weightlist "worldblend_params"	worldspaceblend "aim_ref_run"	weightlist "all"
$Animation "rRun_Front-left" 	"anims/Combat-Run-Front.smd" 	fudgeloop LX LY		rotateto 45			weightlist "worldblend_params"	worldspaceblend "aim_ref_run"	weightlist "all"
$Animation "rRun_Front-right" 	"anims/Combat-Run-Front.smd" 	fudgeloop LX LY		rotateto -45		weightlist "worldblend_params"	worldspaceblend "aim_ref_run"	weightlist "all"
$Animation "rRun_Back" 			"anims/Combat-Run-Back.smd" 	fudgeloop LX LY		rotateto -180		weightlist "worldblend_params"	worldspaceblend "aim_ref_run"	weightlist "all"
$Animation "rRun_Back-left" 	"anims/Combat-Run-Back.smd" 	fudgeloop LX LY		rotateto 135		weightlist "worldblend_params"	worldspaceblend "aim_ref_run"	weightlist "all"
$Animation "rRun_Back-right" 	"anims/Combat-Run-Back.smd" 	fudgeloop LX LY		rotateto -135		weightlist "worldblend_params"	worldspaceblend "aim_ref_run"	weightlist "all"
$Animation "rRun_Right" 		"anims/Combat-Run-Right.smd" 	fudgeloop LX LY		rotateto -90 		weightlist "worldblend_params"	worldspaceblend "aim_ref_run"	weightlist "all"
$Animation "rRun_Left" 			"anims/Combat-Run-Left.smd" 	fudgeloop LX LY		rotateto 90 		weightlist "worldblend_params"	worldspaceblend "aim_ref_run"	weightlist "all"

$sequence "Run_Relaxed" {
	"rRun_Back"
    "rRun_Back-right"
	"rRun_Right"
	"rRun_Front-right"
	"rRun_Front"
	"rRun_Front-left"
	"rRun_Left"
	"rRun_Back-left"
	"rRun_Back"
	//--Sound
    blendwidth 9 blend move_yaw -180 180
	activity "ACT_RUN" 1
	addlayer "aimrun_hi_com_params"
}

$Animation "Walk_Front" 		"anims/Combat-Walk-Aim-Front.smd" 	fudgeloop LX LY		rotateto 0	
$Animation "Walk_Front-left" 	"anims/Combat-Walk-Aim-Front.smd" 	fudgeloop LX LY		rotateto 45	
$Animation "Walk_Front-right" 	"anims/Combat-Walk-Aim-Front.smd" 	fudgeloop LX LY		rotateto -45	
$Animation "Walk_Back" 			"anims/Combat-Walk-Aim-Back.smd" 	fudgeloop LX LY		rotateto -180
$Animation "Walk_Back-left" 	"anims/Combat-Walk-Aim-Back.smd" 	fudgeloop LX LY		rotateto 135	
$Animation "Walk_Back-right" 	"anims/Combat-Walk-Aim-Back.smd" 	fudgeloop LX LY		rotateto -135
$Animation "Walk_Right" 		"anims/Combat-Walk-Aim-Right.smd" 	fudgeloop LX LY		rotateto -90 
$Animation "Walk_Left" 			"anims/Combat-Walk-Aim-Left.smd" 	fudgeloop LX LY		rotateto 90 	

$sequence "Walk_Combat" {
	"Walk_Back"
    "Walk_Back-right"
	"Walk_Right"
	"Walk_Front-right"
	"Walk_Front"
	"Walk_Front-left"
	"Walk_Left"
	"Walk_Back-left"
	"Walk_Back"
	//--Sound
    blendwidth 9 blend move_yaw -180 180
	activity "ACT_WALK" 1
	addlayer "aimwalk_lo_alr_params"
}

$Animation "rWalk_Front" 		"anims/Relax-Walk-Front.smd" 	fudgeloop LX LY		rotateto 0	
$Animation "rWalk_Front-left" 	"anims/Relax-Walk-Front.smd" 	fudgeloop LX LY		rotateto 45	
$Animation "rWalk_Front-right" 	"anims/Relax-Walk-Front.smd" 	fudgeloop LX LY		rotateto -45	
$Animation "rWalk_Back" 		"anims/Relax-Walk-Back.smd" 	fudgeloop LX LY		rotateto -180
$Animation "rWalk_Back-left" 	"anims/Relax-Walk-Back.smd" 	fudgeloop LX LY		rotateto 135	
$Animation "rWalk_Back-right" 	"anims/Relax-Walk-Back.smd" 	fudgeloop LX LY		rotateto -135
$Animation "rWalk_Right" 		"anims/Relax-Walk-Right.smd" 	fudgeloop LX LY		rotateto -90 
$Animation "rWalk_Left" 		"anims/Relax-Walk-Left.smd" 	fudgeloop LX LY		rotateto 90 	

$sequence "Walk_Relaxed" {
	"rWalk_Back"
    "rWalk_Back-right"
	"rWalk_Right"
	"rWalk_Front-right"
	"rWalk_Front"
	"rWalk_Front-left"
	"rWalk_Left"
	"rWalk_Back-left"
	"rWalk_Back"
	//--Sound
    blendwidth 9 blend move_yaw -180 180
	activity "ACT_WALK_ANGRY" 1
	addlayer "aimwalk_hi_alr_params"
}