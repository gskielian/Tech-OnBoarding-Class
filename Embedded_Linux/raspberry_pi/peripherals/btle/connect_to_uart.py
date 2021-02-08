import binascii
import time
from bluepy import btle



hc10_device = btle.Peripheral("00:13:AA:00:2A:9F")

print("connecting")

print("listing services")
for service in hc10_device.services:
  print(str(service))

hc10_uuid = btle.UUID("0000ffe0-0000-1000-8000-00805f9b34fb")

hc10_service = hc10_device.getServiceByUUID(hc10_uuid)

hc10_uart = hc10_service.getCharacteristics()[0]
hc10_uart.write(bytes("\x00", "utf-8"))
time.sleep(1)

# print 1 byte
print(hc10_uart.read())
hc10_device.disconnect()
