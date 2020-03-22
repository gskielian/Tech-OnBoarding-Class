import binascii
import time
from bluepy import btle

hc10_uuid = btle.UUID("0000ffe0-0000-1000-8000-00805f9b34fb")
hc10_uart_uuid = btle.UUID("0000ffe1-0000-1000-8000-00805f9b34fb")

class String_Reading_Delegate(btle.DefaultDelegate):
    def __init__(self):
        btle.DefaultDelegate.__init__(self)

    def handleNotification(self, characteristic_handle, data):
        print(characteristic_handle)

        info = data.decode("utf-8")
        print(info)

hc10_peripheral = btle.Peripheral("00:13:AA:00:2A:9F")
hc10_peripheral.setDelegate( String_Reading_Delegate() )

hc10_service= hc10_peripheral.getServiceByUUID( hc10_uuid )

hc10_characteristic = hc10_service.getCharacteristics( hc10_uart_uuid )[0]
hc10_characteristic.write(bytes("\x00", "utf-8"))

while True:
    if hc10_peripheral.waitForNotifications(1.0):
        continue

    print("waiting for transmission...")
