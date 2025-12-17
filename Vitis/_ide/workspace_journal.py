# 2025-12-17T10:00:14.899932
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis")

platform = client.get_component(name="Plotter")
status = platform.build()

