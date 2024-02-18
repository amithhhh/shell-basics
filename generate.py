#2024-01-20 12:15:01 ERROR: Something went wrong


import random
import datetime

def generate_logentry():
	
	log_levels = ['ERROR', 'WARNING', 'INFO', 'DEBUG', 'CRITICAL']
	time = datetime.datetime.now().strftime("%Y-%m-%d-%H-%M-%S")
	return f'{time} {random.choice(log_levels)}: Something went wrong' 


with open('logfile.log','w') as f:
	for i in range(3000):
		message = generate_logentry()
		f.write(message + '\n')

print('successfully created logfile')
