# Space consumption

# searching for root causes of disk space usage

you can utilize the following command structure for checking the amount of space taken by files in a given directory:

`du -h <directory> | sort -h`

for example to check your home directory:

`du -h ~/ | sort -h`

or to check your root directory (with max depth of 3)

`du -h / --max-depth 3 | sort -h`


# explanation


The `-h` for both `du` and `sort` allow for human readable file sizes (e.g. ends in `G` for gigabyte or `M` for megabyte)

