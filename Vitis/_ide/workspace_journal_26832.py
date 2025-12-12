# 2025-12-10T15:03:25.656283600
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis")

client.delete_component(name="camera_and_motors")

client.delete_component(name="componentName")

comp = client.create_app_component(name="camera_and_motors",platform = "$COMPONENT_LOCATION/../NexysA7-100T/export/NexysA7-100T/NexysA7-100T.xpfm",domain = "standalone_microblaze_riscv_0")

platform = client.get_component(name="NexysA7-100T")
status = platform.build()

comp = client.get_component(name="camera_and_motors")
comp.build()

status = platform.build()

comp.build()

client.delete_component(name="camera_and_motors")

client.delete_component(name="NexysA7-100T")

client.delete_component(name="componentName")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "NexysA7-100T",hw_design = "$COMPONENT_LOCATION/../../Vivado/NexysA7_Top.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

status = platform.build()

comp = client.create_app_component(name="camera_and_motors",platform = "$COMPONENT_LOCATION/../NexysA7-100T/export/NexysA7-100T/NexysA7-100T.xpfm",domain = "standalone_microblaze_riscv_0")

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

vitis.dispose()

