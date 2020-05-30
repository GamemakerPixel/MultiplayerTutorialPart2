extends Button

signal set_connect_type

func _pressed():
	if $IP.text.is_valid_ip_address():
		join()
	else:
		$InvalidIP.show()

func join():
	Net.initialize_client($IP.text)
	emit_signal("set_connect_type", false)
