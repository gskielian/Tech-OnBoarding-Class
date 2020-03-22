from bluepy import btle

btle_device = btle.Peripheral("00:13:AA:00:2A:9F")

for service in btle_device.services:
    print(str(service))
