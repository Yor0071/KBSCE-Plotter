# 2025-12-09T11:05:31.544408
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis")

platform = client.get_component(name="linux")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../Vivado/NexysA7_Top.xsa")

status = platform.build()

status = client.add_platform_repos(platform=["/home/maartenvk/Documents/vitis_workspaces/KBSCE-Plotter/Vitis/linux/export/linux"])

comp = client.create_app_component(name="app",platform = "$COMPONENT_LOCATION/../../../../Documents/vitis_workspaces/KBSCE-Plotter/Vitis/linux/export/linux/linux.xpfm",domain = "standalone_microblaze_riscv_0")

comp = client.get_component(name="sw_to_led")
comp.build()

