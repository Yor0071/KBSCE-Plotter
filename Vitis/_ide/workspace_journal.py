# 2025-12-10T09:29:15.020957
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis")

client.delete_component(name="linux")

client.delete_component(name="app")

client.delete_component(name="componentName")

