# 2025-12-05T15:25:07.723041600
import vitis

client = vitis.create_client()
client.set_workspace(path="Plotter")

comp = client.create_app_component(name="Plot",platform = "$COMPONENT_LOCATION/../Platform/export/Platform/Platform.xpfm",domain = "standalone_microblaze_riscv_0")

platform = client.get_component(name="Platform")
status = platform.build()

client.delete_component(name="app")

client.delete_component(name="componentName")

status = platform.build()

comp = client.get_component(name="Plot")
comp.build()

