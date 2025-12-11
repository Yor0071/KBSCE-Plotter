# 2025-12-11T10:53:17.091124900
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis")

platform = client.get_component(name="Plotter")
status = platform.build()

comp = client.get_component(name="motors_and_camera")
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

client.delete_component(name="camera_and_motors")

client.delete_component(name="camera_and_motors")

client.delete_component(name="bare_minimum_risc-V")

client.delete_component(name="bare_minimum_risc-V")

client.delete_component(name="NexysA7-100T")

client.delete_component(name="NexysA7-100T")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "NexysA7-100T",hw_design = "$COMPONENT_LOCATION/../../Vivado/NexysA7_Top.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

platform = client.get_component(name="NexysA7-100T")
status = platform.build()

comp = client.create_app_component(name="Plotter_with_picture",platform = "$COMPONENT_LOCATION/../NexysA7-100T/export/NexysA7-100T/NexysA7-100T.xpfm",domain = "standalone_microblaze_riscv_0")

status = platform.build()

comp = client.get_component(name="Plotter_with_picture")
comp.build()

status = platform.build()

comp.build()

vitis.dispose()

