# Getting started with renode

This is a quickstart for how to connect to the uart and visualize outputs.


## Get the software from github

Open the following website and grab the latest release:

[https://github.com/renode/renode/releases](https://github.com/renode/renode/releases)

Install with:

```bash
sudo dpkg -i renode_____.deb
```

## Run the demo script with a custom elf file

Step 0) change the default script to contain your elf:

```bash
sudo vim /opt/renode/scripts/single-node/stm32f103.resc
```

And change the script to contain your stm32f103 elf (feel free to sub
renode_test_2.elf with your own elf, changing the name in the resc file).
Also change the uart number (and rename to usart if usart).

(Example stm32f103.resc file working with `renode_test_2.elf` included for convenience)

Step 1) open renode (headless) in the directory with the `renode_test_2.elf`:

```bash
renode --disable-xwt -P 0123
```

Step 2) In another session open the telnet session for the monitor:

```bash
telnet localhost 0123
```


Step 3) in the telnet window load the script, and start emulation

```
(machine-0) include @scripts/single-node/stm32f103.resc
(machine-0) start
```

Step 4) write chars

```
(machine-0) sysbus.usart1 WriteChar 0x01
```
This should cause the word "one" to appear on the renode terminal.

```
(machine-0) sysbus.usart1 WriteChar 0x02
```
This should cause the word "two" to appear on the renode terminal.


## Robot testing

Included in this directory is an example robot test.

To make this work you will need to move the test.robot file to your /opt/renode/
directory and allow permissions it to be read (`mv` then `chmod`).

Afterwards run the robot test with:

```bash
renode-test test.robot
```


you should get something like the following result:
```bash
❯ renode-test test.robot
Preparing suites
Started Renode instance on port 9999; pid 308327
Starting suites
Running test.robot
+++++ Starting test 'test.Ping'
+++++ Finished test 'test.Ping' in 3.08 seconds with status OK
Suite test.robot finished successfully! in 7.75 seconds.
Cleaning up suites
Closing Renode pid 308327
Aggregating all robot results
Output:  robot_output.xml
Log:     log.html
Report:  report.html
Tests finished successfully :)
```

## Connecting a terminal to view/log the output outside of robot tests

In the telnet window run the following:

```renode
(machine-1) emulation CreateUartPtyTerminal "term" "/tmp/uart"
(machine-1) connector Connect sysbus.usart1 term
```

Step 4) open screen on the pty to view any uart outputs

```bash
screen /tmp/uart
```

Step 5) start the machine on the telnet terminal by typing `s`:

```renode
(machine-1) s
```

