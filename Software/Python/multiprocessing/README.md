# Multiprocessing #

Sometimes you would like a single python object to receive messages from other other running processes.

For example, one process might be a robot motor controller, which takes messages from a process monitoring the mic, and another monitoring the camera.


If you see a person, it might want to say hello and move towards them.
If you hear the word "stop" you would want to send a message to the robot to stop.

To prevent confusion of the robot object, we'll have to determine how to organize communications between these three programs/processes.

We'll aim to show how you can utilize the Python Multiprocessing class to accomplish this.


## multiprocessing hello world ##

See 00_mp_hello for a simple example of three process communication.



