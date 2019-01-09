import time

num = 0

buf = [0.8,0.7,0.99,0.98,0.98,0.8,0.7,0.7,0.99,0.98,0.88]

result = []
t      = []
control = 0

while(num < len(buf) ):
    if control == 0:      
        if buf[num] > 0.9:
            result.append(buf[num])
            t.append(num)
            control = 1
    elif control == 1:
        if buf[num] < 0.9:
            result.append(buf[num])
            t.append(num)
            control = 0
    num +=1
    time.sleep(0.1)
    
print(result,t)
