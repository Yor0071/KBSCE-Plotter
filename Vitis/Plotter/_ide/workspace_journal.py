# 2025-12-17T13:47:17.518123
import vitis

client = vitis.create_client()
client.set_workspace(path="Plotter")

platform = client.get_component(name="LinuxPlotform1")
status = platform.build()

status = platform.build()

comp = client.get_component(name="Plot9")
comp.build()

