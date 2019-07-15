import math


def s_to_f(second):
	win_len = 25
	hop = 10
	mil_sec = float(second) * 1000
	
	if mil_sec != 0:
		frame = (mil_sec - win_len) / hop
	else:
		frame = 0
	frame = math.ceil(frame)
	
	return frame