extends ColorRect

const CONNECT_TEXT = ["Waiting for players...", "Connecting to server..."]

func set_connect_type(host):
	show()
	if host:
		$Label.text = CONNECT_TEXT[0]
	else:
		$Label.text = CONNECT_TEXT[1]
