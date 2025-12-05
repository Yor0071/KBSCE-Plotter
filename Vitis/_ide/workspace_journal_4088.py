# 2025-11-14T11:40:01.710057
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis")

platform = client.get_component(name="bare_minimum_risc-V")
status = platform.build()

comp = client.get_component(name="sw_to_led")
comp.build()

platform = client.get_component(name="bare_minimum_risc-V")
status = platform.build()

comp = client.get_component(name="sw_to_led")
comp.build()

vitis.dispose()

