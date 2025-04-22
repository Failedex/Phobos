import time
import random

states = [
    [0, 1, 2, 3],
    # [4, 5],
    [6, 7]
]

state = 0
i = 0

while True: 
    if i == len(states[state]):
        if state == 0:
            if random.randint(1, 3) == 1:
                state = random.randint(0, len(states)-1)
        else:
            if random.randint(1, 6) == 1:
                state = random.randint(0, len(states)-1)
        i = 0
    else:
        print(states[state][i], flush=True)
        i += 1
        time.sleep(0.2)
