from multiprocessing import Process, Queue
import sys
import time

def hello_threading(q):
    print("hello")
    counter = 1
    while True:
        time.sleep(0.5)
        q.put("there from test1: " + str(counter))
        counter += 1

if __name__ == '__main__':
    hello_threading(sys.argv[1])
