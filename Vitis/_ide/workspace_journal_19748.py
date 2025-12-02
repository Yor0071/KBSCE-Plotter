# 2025-11-28T13:29:34.903718800
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis")

client.delete_component(name="sw_to_led")

client.delete_component(name="componentName")

vitis.dispose()

