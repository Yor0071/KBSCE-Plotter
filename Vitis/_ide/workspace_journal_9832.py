# 2025-11-14T11:13:41.693776
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis")

platform = client.get_component(name="bare_minimum_risc-V")
status = platform.build()

vitis.dispose()

