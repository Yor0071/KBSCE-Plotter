# 2025-12-10T14:54:59.603048
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis")

platform = client.get_component(name="NexysA7-100T")
status = platform.build()

comp = client.get_component(name="camera_and_motors")
comp.build()

component = client.get_component(name="camera_and_motors")

lscript = component.get_ld_script(path="C:\Users\liamb\GitHub\KBSCE-Plotter\Vitis\camera_and_motors\src\lscript.ld")

lscript.regenerate()

status = platform.build()

comp.build()

vitis.dispose()

