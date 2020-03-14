# Process Polling

This example shows how to have a threaded process to act on message queue every _ seconds.

## Uses

Generally, Perform an action every _ seconds, and this action depends on that of a certain datastream.

Examples of some more specific cases below:

### Noisy Sensor Data Aggregate

For noisy sensor data, act upon an average of it every _ seconds without disturbing the main thread.

### Act on only latest data every _ seconds (polling)

Poll every _ seconds, without disturbing the main thread.

### Act on Max of last _ seconds of data

Test max value and act every _ seconds, without disturbing the main thread.
