$origin 0 0 0 180
$modelname "crysis2\Grunt.mdl"
$model "Grunt"	"Grunt-Ref"
$model "Grunt"	"Grunt-Jelly"
$model "Grunt"	"Grunt-Guts"
$model "Grunt"	"Grunt-SSS"
$model "Grunt"	"Grunt-Refract"
$poseparameter "move_yaw" -180 180 wrap

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

$Animation "aim-neutral" 		"anims/aimparams/aim_pose_lo_idle.smd"	frame 2 2 weightlist "worldblend_params"
$Animation "aim-up" 			"anims/aimparams/ADS_AimUp.smd"		frame 0 0 subtract "aim-neutral" 0 weightlist "worldblend_params"
$Animation "aim-down" 			"anims/aimparams/aim_pose_lo_idle.smd"	frame 2 2 subtract "aim-neutral" 0 weightlist "worldblend_params"
$Sequence "aim_com" {
	"aim-down"
	"aim-up"
	blendwidth 2 blend "ads" 0 1
	delta
	//autoplay
	hidden
	addlayer "aimidle_hi_com_params"
}

$include "qci/beh.qci"
$include "qci/beh_additives.qci"
$include "qci/beh_idle.qci"
$include "qci/beh_interacts.qci"
$include "qci/cin_07_times_square.qci"
$include "qci/cin_alien_vessel.qci"
$include "qci/det.qci"
$include "qci/hit.qci"
$include "qci/loc_run.qci"
$include "qci/loc_step.qci"
$include "qci/loc_walk.qci"
$include "qci/smo_cover.qci"
$include "qci/smo_jump.qci"
$include "qci/syn_pva.qci"
$include "qci/wep.qci"