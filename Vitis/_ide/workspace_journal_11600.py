# 2025-12-10T14:40:08.782964900
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "NexysA7-100T",hw_design = "$COMPONENT_LOCATION/../../Vivado/NexysA7_Top.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

comp = client.create_app_component(name="Camera_and_motors",platform = "$COMPONENT_LOCATION/../NexysA7-100T/export/NexysA7-100T/NexysA7-100T.xpfm",domain = "standalone_microblaze_riscv_0")

comp = client.get_component(name="Camera_and_motors")
status = comp.import_files(from_loc="", files=["C:\VHDL_Projects\KBSCE-Plotter\Vitis\Camera\src\main.cpp", "C:\VHDL_Projects\KBSCE-Plotter\Vitis\Camera\src\ov7670_i2c.cpp", "C:\VHDL_Projects\KBSCE-Plotter\Vitis\Camera\src\ov7670_i2c.h"])

platform = client.get_component(name="NexysA7-100T")
status = platform.build()

status = platform.build()

comp = client.get_component(name="Camera_and_motors")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

client.delete_component(name="Camera_and_motors")

client.delete_component(name="componentName")

client.delete_component(name="componentName")

client.delete_component(name="componentName")

client.delete_component(name="componentName")

status = platform.build()

comp = client.create_app_component(name="camera_and_motors",platform = "$COMPONENT_LOCATION/../NexysA7-100T/export/NexysA7-100T/NexysA7-100T.xpfm",domain = "standalone_microblaze_riscv_0")

status = platform.build()

comp = client.get_component(name="camera_and_motors")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

