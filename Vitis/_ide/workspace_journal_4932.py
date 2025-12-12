# 2025-11-18T09:03:38.138937
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis")

platform = client.get_component(name="linux")
status = platform.build()

status = platform.build()

comp = client.get_component(name="sw_to_led")
comp.build()

status = comp.clean()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

