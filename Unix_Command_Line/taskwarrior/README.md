# Taskwarrior Usage #

taskwarrior is a cli task management tool, taking notes on it's usage below:

## usage ##


- `task` - lists tasks and you can get task ids
- `task add "your task here"` - adds a task and starts tracking
- `task <task id> done` - completes taskid task (e.g. task 1 done finishes task 1)
- `task <task id> delete` - deletes taskid
- `task add project:<projectname> <project description>` - adds task, to specified project
- `task <task id> modify project:<projectname>` - modify project name 
- `task <task id> modify priority:<prioritynumber>` - modify priority
- `task <task id> start` - start task of taskid
- `task <task id> annotate <annotation>` - add more to a task (appends)
- `task <task id> info` - get info on task id
- `task add "<task description>" due:1st recur:monthly until:2015-03-31` - example of recurring task

## durations ##

[list of legal recurrance durations](https://taskwarrior.org/docs/durations.html)

## linking with timewarrior ##

copy the `on-modify.timewarrior` file to the `~/.task/hooks/` directory
then `chmod +x on-modify.timewarrior` and run `task diagnostics` to check that it is active


