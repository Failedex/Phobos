import time

i = 0
while True:
    print(i, flush=True)
    i += 1
    i %= 1000
    time.sleep(1/30)
