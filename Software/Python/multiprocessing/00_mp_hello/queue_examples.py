from multiprocessing import Process, Queue
import test1
import test2
import time

def call_test1(q):
    test1.hello_threading(q)

def call_test2(q):
    test2.hello_threading(q)

if __name__ == '__main__':
    q = Queue()
    p1 = Process(target=call_test1, args=(q,))
    p2 = Process(target=call_test2, args=(q,))
    p1.start()
    p2.start()

    while True:
        print(q.get())
    p1.join()
    p2.join()