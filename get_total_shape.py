import numpy as np
from create_output import create_output
import glob
import os 
from utils import *
import linecache


def get_total_shape(root_dir,
					uem):

	mapping_dict = {}
	
	cache_data = linecache.getlines(uem)
	segment_num = len(cache_data)

	step = -1
	length = 0
	for i in range(segment_num):
		line = cache_data[i]
		session = line.split(' ')[0]
		start_frame =  s_to_f(line.split(' ')[-2].rstrip('/n'))
		stop_frame = s_to_f(line.split(' ')[-1].rstrip('/n'))
		
		start = length

		duration = stop_frame - start_frame
		length += duration

		stop = length

		step += 1
		if i < segment_num - 1:
			next_session = cache_data[i+1].split(' ')[0]
			if next_session == session:
				
				mapping_dict[(start, stop)] = [start_frame, stop_frame, session + ' ' + str(step), next_session + ' ' + str(step + 1)]
			else:
				mapping_dict[(start, stop)] = [start_frame, stop_frame, session + ' ' + str(step), next_session + ' 0']
				step = -1
		else:
			mapping_dict[(start, stop)] = [start_frame, stop_frame, session + ' ' + str(step), 'Nofile']


	return mapping_dict, length

