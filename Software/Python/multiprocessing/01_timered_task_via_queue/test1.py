from multiprocessing import Process, Queue
import sys
import time

def hello_threading(q):
    while True:
        time.sleep(3)
        while not q.empty():
            last_value = q.get()

        print last_value

if __name__ == '__main__':
    hello_threading(sys.argv[1])
