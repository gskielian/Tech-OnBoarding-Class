import binascii
import time
from bluepy import btle



hc10_device = btle.Peripheral("00:13:AA:00:2A:9F")
hc10_primary_service_uuid = btle.UUID("0000ffe0-0000-1000-8000-00805f9b34fb")
hc10_service = hc10_device.getServiceByUUID(hc10_primary_service_uuid)

for characteristic in hc10_service.getCharacteristics():
    print(str(characteristic))

