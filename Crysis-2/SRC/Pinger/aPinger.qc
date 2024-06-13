$scale 1
$modelname "crysis2\Pinger.mdl"
$model "Pinger_Base"	"aPinger_Base"
$model "Pinger_Motor"	"aPinger_Motor"
$surfaceprop "metal"
$contents "solid"
$illumposition -0.77 5.848 47.836
$cdmaterials "models\crysis2\pinger\"
$cdmaterials "models\crysis2\shared\"
$mostlyopaque

$bodygroup "Plate_Motor"
{
	studio "aPinger_Plate_Motor.smd"
	blank
}
$bodygroup "Plate_Back_Left"
{
	studio "aPinger_Plate_Back_Left.smd"
	blank
}
$bodygroup "Plate_Back_Right"
{
	studio "aPinger_Plate_Back_Right.smd"
	blank
}
$bodygroup "Plate_Mid_Left"
{
	studio "aPinger_Plate_Mid_Left.smd"
	blank
}
$bodygroup "Plate_Mid_Right"
{
	studio "aPinger_Plate_Mid_Right.smd"
	blank
}

$Sequence "a_idle" { "anims/a_idle.smd"
	activity "ACT_IDLE_COMBAT" 1
	loop
	rotate 180
}

$Animation "Walk_Front" 		"anims\a_walk_com_fwd.smd"	fudgeloop LX LY		rotate 180 rotateto 0	
$Animation "Walk_Front-left" 	"anims\a_walk_com_fwd.smd"	fudgeloop LX LY		rotate 180 rotateto 45	
$Animation "Walk_Front-right" 	"anims\a_walk_com_fwd.smd"	fudgeloop LX LY		rotate 180 rotateto -45	
$Animation "Walk_Back" 			"anims\a_walk_com_bwd.smd"	fudgeloop LX LY		rotate 180 rotateto -180
$Animation "Walk_Back-left" 	"anims\a_walk_com_bwd.smd"	fudgeloop LX LY		rotate 180 rotateto 135	
$Animation "Walk_Back-right" 	"anims\a_walk_com_bwd.smd"	fudgeloop LX LY		rotate 180 rotateto -135
$Animation "Walk_Right" 		"anims\a_walk_com_rgt.smd" 	fudgeloop LX LY		rotate 180 rotateto -90 
$Animation "Walk_Left" 			"anims\a_walk_com_lft.smd" 	fudgeloop LX LY		rotate 180 rotateto 90 	

$sequence "a_walk_com" {
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
}