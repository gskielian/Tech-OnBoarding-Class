# KiCad #


## Install

to install use the setup.sh script:

`./setup.sh`

This setup may take a while due to the size of KiCad.

### Troubleshooting

if you see an error starting with with "unable to parse package file /var/lib/apt/lists/" try

```
sudo rm -r /var/lib/apt/lists/*
sudo apt-get update -y
```

then re-running the setup script


