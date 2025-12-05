# 2025-11-13T13:18:00.635177100
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis")

platform = client.get_component(name="bare_minimum_risc-V")
status = platform.build()

status = platform.build()

comp = client.get_component(name="sw_to_led")
comp.build()

status = platform.build()

comp.build()

vitis.dispose()

vitis.dispose()

