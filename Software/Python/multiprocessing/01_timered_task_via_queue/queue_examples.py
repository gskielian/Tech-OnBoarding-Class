from multiprocessing import Process, Queue
import test1
import time

def call_test1(q):
    test1.hello_threading(q)

def call_test2(q):
    test2.hello_threading(q) 
if __name__ == '__main__':
    q = Queue()
    p1 = Process(target=call_test1, args=(q,))
    p1.start()

    counter = 0
    while True:
        q.put(counter)
        counter += 1
        time.sleep(0.1)
    p1.join()
