# 2025-12-11T10:07:13.860904200
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis")

platform = client.get_component(name="NexysA7-100T")
status = platform.build()

comp = client.get_component(name="camera_and_motors")
comp.build()

status = platform.build()

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "Plotter",hw_design = "$COMPONENT_LOCATION/../../Vivado/NexysA7_Top_motors_and_cam.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

platform = client.get_component(name="Plotter")
status = platform.build()

comp = client.create_app_component(name="motors_and_camera",platform = "$COMPONENT_LOCATION/../Plotter/export/Plotter/Plotter.xpfm",domain = "standalone_microblaze_riscv_0")

status = platform.build()

comp = client.get_component(name="motors_and_camera")
comp.build()

status = platform.build()

comp.build()

vitis.dispose()

