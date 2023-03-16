## rtl_power ##

the following are example scripts from the documentation

[link to kmkeen's documentation](http://kmkeen.com/rtl-power/)


### Data format for csv outputs

`date, time, Hz low, Hz high, Hz step, samples, dB, dB, dB, ...`

### scripts


#### prep for waterfall visualization 1hr

`rtl_power -f 118M:137M:8k -g 50 -i 10 -e 1h airband.csv`

#### prep for widespectrum visualization 24hr

`rtl_power -f 24M:1700M:1M -i 100 -g 50 -e 24h data.csv`

#### prep for noise visualization 15min

`rtl_power -f 24M:1.7G:1M -g 50 -i 15m -1 noise.csv`

#### prep for doppler effect visualization 1hr

`rtl_power -f 674.230M:674.233M:1 -g 50 -i 1 -e 1h radar.csv`

#### print average power in spectrum range peroidically

`rtl_power -f 950M:1450M:3.2M -g 30 -i 1 | awk 'BEGIN {t=0} {if (t==0) {t=$2; n=0; s=0}; if (t==$2) {s+=$7; n++} else {print s/n; t=0}}'`
