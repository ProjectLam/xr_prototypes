extends Node3D

var viewport = $Node3d


# Called when the node enters the scene tree for the first time.
func _ready():
#	var screen = get_node("./character/screen")
	var xr_interface : XRInterface = XRServer.find_interface("OpenXR")
	if xr_interface and xr_interface.is_initialized():
		xr_interface.start_passthrough()
		var vp : Viewport = get_viewport()
		vp.use_xr = true
		vp.transparent_bg = true

#	screen.material_override.flags_transparent=true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
