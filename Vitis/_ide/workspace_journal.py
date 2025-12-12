# 2025-12-12T13:49:35.516085
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis")

client.delete_component(name="app-Q")

client.delete_component(name="componentName")

client.delete_component(name="app-S")

client.delete_component(name="componentName")

client.delete_component(name="app-T")

client.delete_component(name="componentName")

client.delete_component(name="app-V")

client.delete_component(name="componentName")

client.delete_component(name="app-W")

platform = client.get_component(name="AA-lnx")
status = platform.build()

comp = client.get_component(name="AA-app")
comp.build()

