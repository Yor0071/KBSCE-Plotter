# 2025-12-10T14:58:30.511850
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis")

platform = client.get_component(name="lnx-i")
status = platform.build()

comp = client.get_component(name="app-i")
comp.build()

client.delete_component(name="app-i")

client.delete_component(name="componentName")

client.delete_component(name="app-J")

client.delete_component(name="componentName")

client.delete_component(name="lnx-i")

client.delete_component(name="lnx-J")

vitis.dispose()

