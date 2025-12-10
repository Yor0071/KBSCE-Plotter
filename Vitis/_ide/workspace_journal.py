# 2025-12-10T10:38:36.274504
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis")

platform = client.get_component(name="lnx-12-10-A")
status = platform.build()

comp = client.get_component(name="app-12-10-A")
comp.build()

