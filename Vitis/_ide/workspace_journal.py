# 2025-12-11T10:53:17.091124900
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis")

platform = client.get_component(name="Plotter")
status = platform.build()

comp = client.get_component(name="motors_and_camera")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

client.delete_component(name="camera_and_motors")

client.delete_component(name="camera_and_motors")

client.delete_component(name="bare_minimum_risc-V")

client.delete_component(name="bare_minimum_risc-V")

client.delete_component(name="NexysA7-100T")

client.delete_component(name="NexysA7-100T")

