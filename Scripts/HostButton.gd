extends Button

signal set_connect_type

func _ready():
	for ip in IP.get_local_addresses():
        	if "127." in ip and not ip == "127.0.0.1":
            		$IP.text = "IP: " + ip
func host():
	Net.initialize_server()
	emit_signal("set_connect_type", true)
