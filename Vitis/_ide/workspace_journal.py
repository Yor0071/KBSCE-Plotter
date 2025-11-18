# 2025-11-18T09:03:38.138937
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis")

platform = client.get_component(name="linux")
status = platform.build()

