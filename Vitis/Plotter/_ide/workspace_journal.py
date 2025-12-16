# 2025-12-16T14:25:35.180974800
import vitis

client = vitis.create_client()
client.set_workspace(path="Plotter")

platform = client.get_component(name="Plotform3")
status = platform.build()

comp = client.get_component(name="Plot8")
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

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

